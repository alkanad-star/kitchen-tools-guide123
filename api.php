<?php
require_once 'config.php';

// Handle API requests
header('Content-Type: application/json');

$db = connectDB();
$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'get_all_tools':
        getAllTools($db);
        break;
    case 'get_tool':
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        getTool($db, $id);
        break;
    case 'search_tools':
        $query = isset($_GET['query']) ? $_GET['query'] : '';
        searchTools($db, $query);
        break;
    case 'get_categories':
        getCategories($db);
        break;
    case 'get_tools_by_category':
        $category = isset($_GET['category']) ? $_GET['category'] : '';
        getToolsByCategory($db, $category);
        break;
    case 'get_recent_tools':
        getRecentTools($db);
        break;
    case 'get_popular_tools':
        getPopularTools($db);
        break;
    default:
        echo json_encode(['error' => 'Invalid action']);
}

// Get all kitchen tools
function getAllTools($db) {
    try {
        $stmt = $db->query('SELECT id, name, category, description, image_url FROM kitchen_tools ORDER BY name');
        $tools = $stmt->fetchAll();
        echo json_encode($tools);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

// Get tools by category
function getToolsByCategory($db, $category) {
    try {
        $stmt = $db->prepare('SELECT id, name, category, description, image_url FROM kitchen_tools WHERE category = ? ORDER BY name');
        $stmt->execute([$category]);
        $tools = $stmt->fetchAll();
        echo json_encode($tools);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

// Get recently added tools (simulated here - in a real app you'd have a timestamp column)
function getRecentTools($db) {
    try {
        $stmt = $db->query('SELECT id, name, category, description, image_url FROM kitchen_tools ORDER BY id DESC LIMIT 6');
        $tools = $stmt->fetchAll();
        echo json_encode($tools);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

// Get popular tools (simulated here - in a real app you'd track views/likes)
function getPopularTools($db) {
    try {
        // In a real application, this would be based on view count or user ratings
        // For now, we'll just select some tools from different categories
        $stmt = $db->query('SELECT id, name, category, description, image_url FROM kitchen_tools 
                          WHERE id IN (1, 4, 7, 10, 13, 16) ORDER BY name');
        $tools = $stmt->fetchAll();
        echo json_encode($tools);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

    // Get specific tool by ID
function getTool($db, $id) {
    try {
        // Get tool details
        $stmt = $db->prepare('SELECT * FROM kitchen_tools WHERE id = ?');
        $stmt->execute([$id]);
        $tool = $stmt->fetch();
        
        if (!$tool) {
            echo json_encode(['error' => 'Tool not found']);
            return;
        }
        
        // Get recipes for this tool
        $stmt = $db->prepare('SELECT * FROM recipes WHERE tool_id = ?');
        $stmt->execute([$id]);
        $recipes = $stmt->fetchAll();
        
        // Get troubleshooting tips for this tool
        $stmt = $db->prepare('SELECT * FROM troubleshooting WHERE tool_id = ?');
        $stmt->execute([$id]);
        $troubleshooting = $stmt->fetchAll();
        
        // Get related tools (same category)
        $stmt = $db->prepare('SELECT id, name, category, image_url FROM kitchen_tools WHERE category = ? AND id != ? LIMIT 4');
        $stmt->execute([$tool['category'], $id]);
        $related_tools = $stmt->fetchAll();
        
        $result = [
            'tool' => $tool,
            'recipes' => $recipes,
            'troubleshooting' => $troubleshooting,
            'related_tools' => $related_tools
        ];
        
        echo json_encode($result);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

// Search for tools
function searchTools($db, $query) {
    try {
        $query = "%$query%";
        $stmt = $db->prepare('SELECT id, name, category, image_url FROM kitchen_tools 
                              WHERE name LIKE ? OR category LIKE ? OR description LIKE ?');
        $stmt->execute([$query, $query, $query]);
        $tools = $stmt->fetchAll();
        echo json_encode($tools);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}

// Get all categories
function getCategories($db) {
    try {
        $stmt = $db->query('SELECT DISTINCT category FROM kitchen_tools ORDER BY category');
        $categories = $stmt->fetchAll(PDO::FETCH_COLUMN, 0);
        echo json_encode($categories);
    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}
?>