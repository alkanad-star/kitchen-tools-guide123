# Kitchen Tools Guide Application

A comprehensive web application that helps home cooks learn how to properly use, clean, and maintain their kitchen tools and appliances.

## Features

- **Search Functionality**: Find specific kitchen tools by name or category
- **Detailed Usage Instructions**: Clear explanations on how to properly use each tool
- **Recipe Integration**: Discover recipes that make optimal use of each tool
- **Cleaning & Maintenance Guides**: Learn how to properly care for your tools
- **Troubleshooting Tips**: Solutions for common issues with kitchen equipment
- **Safety Instructions**: Important safety tips for each tool
- **Responsive Design**: Works on desktop, tablet, and mobile devices

## Tools & Categories

The application includes information on 30 kitchen tools across 8 categories:

- Cutting Tools (knives, mandolines, shears)
- Small Appliances (blenders, mixers, food processors)
- Major Appliances (air fryers, pressure cookers, slow cookers)
- Measuring Tools (scales, measuring cups, thermometers)
- Cookware (cast iron, non-stick pans, dutch ovens)
- Baking Tools (rolling pins, pastry blenders, silicone mats)
- Food Preparation Tools (graters, colanders, salad spinners)
- Kitchen Gadgets (garlic press, vegetable peeler, can opener)
- Storage & Organization (containers, drawer organizers, spice racks)
- Safety & Protection (oven mitts, cut-resistant gloves, fire extinguishers)

## Installation

1. Place all files in your web server directory (Apache, XAMPP, WAMP, etc.)
2. Navigate to `setup.php` in your browser to create the SQLite database
3. Run `create-image-folders.php` to generate placeholder images
4. Access the application by visiting `index.html`

## Technical Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: PHP
- **Database**: SQLite
- **Icons**: Font Awesome 5
- **Dependencies**: None (no external JavaScript libraries required)

## Database Structure

- `kitchen_tools`: Stores basic tool information and instructions
- `recipes`: Contains recipes that use specific tools
- `troubleshooting`: Holds common problems and solutions for each tool

## File Structure

```
kitchen-tools-guide/
├── api.php                   # API endpoints
├── app.js                    # Frontend JavaScript
├── config.php                # Database configuration
├── create-image-folders.php  # Script to create image placeholders
├── database.sql              # Database schema
├── error.html                # Error page
├── .htaccess                 # Apache configuration
├── index.html                # Main application page
├── kitchen-tools-data.sql    # Sample data
├── README.md                 # This file
├── setup.php                 # Database setup script
├── styles.css                # Application styling
└── images/                   # Tool images and placeholders
```

## Credits

- Icons by [Font Awesome](https://fontawesome.com/)
- Kitchen tool information compiled from various cooking resources

## License

This project is available for educational purposes. Feel free to modify and use it for your own projects.