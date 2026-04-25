#!/usr/bin/env bash

# Enforce strict error handling
set -euo pipefail

# ==========================================
# Configuration
# ==========================================
WEBSITE_URL="https://seattle.otalkie.com"
BUCKET="gs://seattle.otalkie.com"
GITHUB_REPO="https://github.com/jianglong98/seattle.git" # Updated to HTTPS

# The directory containing your website files. 
SOURCE_DIR="." 
BRANCH="$(git rev-parse --abbrev-ref HEAD)" # Automatically gets current branch

echo "🚀 Starting deployment automation for $WEBSITE_URL..."

# ==========================================
# Prerequisite Checks
# ==========================================
if ! command -v gsutil &> /dev/null; then
    echo "❌ Error: 'gsutil' is not installed or not in your PATH. Please install Google Cloud CLI."
    exit 1
fi

if ! command -v git &> /dev/null; then
    echo "❌ Error: 'git' is not installed or not in your PATH."
    exit 1
fi

# ==========================================
# 1. Deploy to Google Cloud Storage
# ==========================================
echo "☁️  Syncing files to Google Cloud Storage ($BUCKET)..."
gsutil rsync -R -c -d "$SOURCE_DIR" "$BUCKET"

echo "🔓 Configuring public read access..."
gsutil iam ch allUsers:objectViewer "$BUCKET"

echo "⚙️  Configuring website entry points (index and 404 pages)..."
gsutil web set -m index.html -e 404.html "$BUCKET"

echo "✅ GCP Deployment successful!"

# ==========================================
# 2. Push to GitHub
# ==========================================
echo "🐙 Checking for changes to push to GitHub ($GITHUB_REPO)..."
git add .

# Check if there are staged changes. If there are, commit and push.
if git diff-index --quiet HEAD --; then
    echo "ℹ️  No new changes to commit to GitHub."
else
    git commit -m "Automated deployment to $WEBSITE_URL"
    git push origin "$BRANCH"
    echo "✅ Code pushed to GitHub branch: $BRANCH."
fi

echo "🎉 All done! Your website is live at: $WEBSITE_URL"
