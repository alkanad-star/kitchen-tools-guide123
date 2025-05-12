<?php
// Database setup script
require_once 'config.php';

// Create a new SQLite database file
$dbFile = 'kitchen_tools.db';

// Check if the database file already exists
if (file_exists($dbFile)) {
    unlink($dbFile); // Remove existing file
}

// Create new database
$db = new PDO('sqlite:' . $dbFile);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Get the fixed SQL schema
$sqlSchema = file_get_contents('database.sql');

// Execute the SQL commands
try {
    $db->exec($sqlSchema);
    echo "Database created successfully!<br>";
    echo "Sample data has been added.<br>";
    echo "<a href='index.html'>Go to the application</a>";
} catch (PDOException $e) {
    die("Error setting up database: " . $e->getMessage());
}
?>