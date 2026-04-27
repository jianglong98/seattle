# seattle
Seattle Property Management Service
# LW LLC. Seattle Property Management

## Website Overview
This website represents **LW LLC. Property Management** (formerly Otalkie Property Management), a top-tier property management business operating in the Greater Seattle Area. It is designed to be a high-conversion, professional landing page to capture leads from property owners who want a free rental analysis.

## Key Features & Functions
- **Bilingual Support (English & Chinese):** Includes a language switcher in the navigation bar to toggle the entire website's text between English and Simplified Chinese dynamically using JavaScript.
- **Responsive Design:** Optimized for both desktop and mobile devices, including a responsive hamburger menu for mobile navigation.
- **Formspree Integration:** Uses an AJAX-based Formspree form (`@formspree/ajax`) to capture leads for "Free Rental Analysis" and send them directly to `lw@otalkie.com`. It features client-side validation and success/error message handling without page reloads.
- **Smooth Scrolling:** Anchor links in the navigation smoothly scroll to respective sections on the page.

## Content Sections
1. **Header & Navigation:** Logo, links to Services, About Us, Reviews, Contact, Portal links (Owner/Resident), and Language Switcher.
2. **Hero Section:** Strong call-to-action ("Get a Free Rental Analysis") with key statistics (500+ properties managed, 99% rent collection, 15 avg days on market).
3. **Services:** Outlines core offerings:
   - Rigorous Tenant Screening
   - Automated Rent Collection
   - 24/7 Maintenance
   - Financial Reporting
4. **Lead Capture / Contact Form:** A form allowing users to submit their name, email, property address, and property type to request a rental analysis.
5. **Testimonials:** Reviews from satisfied clients in Seattle, Bellevue, and Queen Anne.
6. **Footer:** Quick links, social media icons, equal housing opportunity statement, and contact details.

## Meta Data & Contact Information
- **Title:** LW LLC. Seattle Property Management
- **Description:** Top-tier property management in Seattle, WA. Maximize your ROI with less stress.
- **Address:** 18223 145th Ct NE, Woodinville, WA 98072
- **Phone:** 983-444-5123
- **Email:** lw@otalkie.com

## Local Development & Testing

### Preview Files Locally Before Deploying
Since you can't easily browse the files in the cloud, the best practice is to test them locally before running your `deploy.sh` script. You can start a local Firebase server by running this command in your terminal at `/Users/jianglong/Cascade/seattle/`:

```bash
firebase serve --only hosting
```

This will give you a localhost URL (usually `http://localhost:5000`) where you can click around and verify your website looks correct before pushing it live.