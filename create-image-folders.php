<?php
// Script to create image folders and add placeholder images

// Create the images directory if it doesn't exist
if (!file_exists('images')) {
    mkdir('images', 0755, true);
    echo "Created images directory<br>";
}

// Create placeholder image
$placeholder_content = <<<EOT
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
    <rect width="400" height="300" fill="#f5f5f5"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" text-anchor="middle" fill="#aaa">
        Kitchen Tool Image
    </text>
    <rect x="5" y="5" width="390" height="290" stroke="#ddd" stroke-width="2" fill="none"/>
</svg>
EOT;

// Save default placeholder image
file_put_contents('images/placeholder.jpg', $placeholder_content);
echo "Created placeholder image<br>";

// Create category-specific placeholders
$categories = [
    'cutting_tools' => '#FF5722',
    'small_appliances' => '#2196F3',
    'major_appliances' => '#9C27B0',
    'measuring_tools' => '#FF9800',
    'cookware' => '#795548',
    'baking_tools' => '#E91E63',
    'food_preparation_tools' => '#00BCD4',
    'kitchen_gadgets' => '#8BC34A',
    'storage_organization' => '#607D8B',
    'safety_protection' => '#F44336'
];

// Tool-specific placeholders for some common tools
$tools = [
    'chefs_knife' => 'Chef\'s Knife',
    'mandoline' => 'Mandoline Slicer',
    'immersion_blender' => 'Immersion Blender',
    'food_processor' => 'Food Processor',
    'air_fryer' => 'Air Fryer',
    'pressure_cooker' => 'Pressure Cooker',
    'digital_scale' => 'Digital Scale',
    'cast_iron' => 'Cast Iron Skillet',
    'rolling_pin' => 'Rolling Pin',
    'colander' => 'Colander'
];

// Create category placeholder images
foreach ($categories as $folder => $color) {
    $svg_content = <<<EOT
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
    <rect width="400" height="300" fill="$color" opacity="0.2"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" text-anchor="middle" fill="#555">
        {$folder}
    </text>
    <rect x="5" y="5" width="390" height="290" stroke="$color" stroke-width="2" fill="none"/>
</svg>
EOT;
    
    file_put_contents("images/{$folder}.jpg", $svg_content);
    echo "Created placeholder for {$folder}<br>";
}

// Create tool placeholder images
foreach ($tools as $filename => $toolname) {
    $svg_content = <<<EOT
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
    <rect width="400" height="300" fill="#e9e9e9"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" text-anchor="middle" fill="#666">
        {$toolname}
    </text>
    <rect x="5" y="5" width="390" height="290" stroke="#ccc" stroke-width="2" fill="none"/>
</svg>
EOT;
    
    file_put_contents("images/{$filename}.jpg", $svg_content);
    echo "Created placeholder for {$filename}<br>";
}

echo "<br>All image folders and placeholders created successfully!<br>";
echo "<a href='index.html'>Go to the application</a>";
?>