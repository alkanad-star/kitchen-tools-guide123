// DOM Elements
const searchInput = document.getElementById('search-input');
const searchButton = document.getElementById('search-button');
const categoryList = document.getElementById('category-list');
const toolsGrid = document.getElementById('tools-grid');
const toolModal = document.getElementById('tool-modal');
const toolDetails = document.getElementById('tool-details');
const closeModal = document.querySelector('.close');
const toolsCount = document.getElementById('tools-count');
const sortTools = document.getElementById('sort-tools');
const recentToolsGrid = document.getElementById('recent-tools');
const popularToolsList = document.getElementById('popular-tools-list');
const footerCategories = document.getElementById('footer-categories');
const viewAllTools = document.getElementById('view-all-tools');
const viewPopular = document.getElementById('view-popular');
const viewRecent = document.getElementById('view-recent');

// State
let allTools = [];
let currentTools = [];
let currentSort = 'name-asc';
let currentCategory = '';
let categories = [];

// Event Listeners
document.addEventListener('DOMContentLoaded', init);
searchButton.addEventListener('click', performSearch);
searchInput.addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
        performSearch();
    }
});

if (closeModal) {
    closeModal.addEventListener('click', () => {
        toolModal.style.display = 'none';
        document.body.style.overflow = 'auto';
    });
}

window.addEventListener('click', (e) => {
    if (e.target === toolModal) {
        toolModal.style.display = 'none';
        document.body.style.overflow = 'auto';
    }
});

if (sortTools) {
    sortTools.addEventListener('change', function() {
        currentSort = this.value;
        displayTools(currentTools);
    });
}

if (viewAllTools) {
    viewAllTools.addEventListener('click', function(e) {
        e.preventDefault();
        loadAllTools();
    });
}

if (viewPopular) {
    viewPopular.addEventListener('click', function(e) {
        e.preventDefault();
        loadPopularTools();
    });
}

if (viewRecent) {
    viewRecent.addEventListener('click', function(e) {
        e.preventDefault();
        loadRecentTools();
    });
}

// Initialize the app
function init() {
    loadCategories();
    loadAllTools();
    loadRecentTools();
    loadPopularTools();
}

// Load categories
function loadCategories() {
    fetch('api.php?action=get_categories')
        .then(response => response.json())
        .then(loadedCategories => {
            categories = loadedCategories;
            displayCategories(categories);
            updateFooterCategories(categories);
        })
        .catch(error => {
            console.error('Error loading categories:', error);
            // Fallback categories if API fails
            const fallbackCategories = ['Cutting Tools', 'Small Appliances', 'Major Appliances', 'Measuring Tools', 'Cookware'];
            displayCategories(fallbackCategories);
            updateFooterCategories(fallbackCategories);
        });
}

// Display categories in sidebar
function displayCategories(categories) {
    if (!categoryList) return;
    
    categoryList.innerHTML = '';
    
    // Add "All Categories" option
    const allLi = document.createElement('li');
    allLi.innerHTML = '<i class="fas fa-home"></i> All Categories';
    allLi.classList.add(currentCategory === '' ? 'active' : '');
    allLi.addEventListener('click', () => filterByCategory(''));
    categoryList.appendChild(allLi);
    
    // Add individual categories
    categories.forEach(category => {
        const li = document.createElement('li');
        li.innerHTML = `${getCategoryIcon(category)} ${category}`;
        li.classList.add(currentCategory === category ? 'active' : '');
        li.addEventListener('click', () => filterByCategory(category));
        categoryList.appendChild(li);
    });
}

// Update footer categories
function updateFooterCategories(categories) {
    if (!footerCategories) return;
    
    footerCategories.innerHTML = '';
    categories.slice(0, 5).forEach(category => {
        const li = document.createElement('li');
        li.innerHTML = `<a href="#">${category}</a>`;
        li.addEventListener('click', (e) => {
            e.preventDefault();
            filterByCategory(category);
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
        footerCategories.appendChild(li);
    });
}

// Load all tools
function loadAllTools() {
    fetch('api.php?action=get_all_tools')
        .then(response => response.json())
        .then(tools => {
            allTools = tools;
            currentTools = tools;
            currentCategory = '';
            updateCategorySelection();
            displayTools(tools);
        })
        .catch(error => {
            console.error('Error loading tools:', error);
            // Fallback tools if API fails
            const fallbackTools = getFallbackTools();
            allTools = fallbackTools;
            currentTools = fallbackTools;
            displayTools(fallbackTools);
        });
}

// Load recent tools
function loadRecentTools() {
    fetch('api.php?action=get_recent_tools')
        .then(response => response.json())
        .then(tools => {
            displayRecentTools(tools);
        })
        .catch(error => {
            console.error('Error loading recent tools:', error);
            // Use first few items from all tools as fallback
            if (allTools.length > 0) {
                displayRecentTools(allTools.slice(0, 3));
            } else {
                const fallbackTools = getFallbackTools().slice(0, 3);
                displayRecentTools(fallbackTools);
            }
        });
}

// Load popular tools
function loadPopularTools() {
    fetch('api.php?action=get_popular_tools')
        .then(response => response.json())
        .then(tools => {
            displayPopularTools(tools);
        })
        .catch(error => {
            console.error('Error loading popular tools:', error);
            // Use random items from all tools as fallback
            if (allTools.length > 0) {
                const randomTools = [...allTools].sort(() => 0.5 - Math.random()).slice(0, 3);
                displayPopularTools(randomTools);
            } else {
                const fallbackTools = getFallbackTools().slice(0, 3);
                displayPopularTools(fallbackTools);
            }
        });
}

// Filter tools by category
function filterByCategory(category) {
    currentCategory = category;
    updateCategorySelection();
    
    if (category === '') {
        currentTools = [...allTools];
        displayTools(currentTools);
        return;
    }
    
    fetch('api.php?action=get_tools_by_category&category=' + encodeURIComponent(category))
        .then(response => response.json())
        .then(tools => {
            currentTools = tools;
            displayTools(tools);
        })
        .catch(error => {
            console.error('Error filtering tools:', error);
            // Filter locally if API fails
            const filteredTools = allTools.filter(tool => tool.category === category);
            currentTools = filteredTools;
            displayTools(filteredTools);
        });
}

// Update category selection in sidebar
function updateCategorySelection() {
    const categoryItems = categoryList.querySelectorAll('li');
    categoryItems.forEach(item => {
        item.classList.remove('active');
        const itemCategory = item.textContent.trim().replace(getCategoryIcon(''), '').trim();
        if ((itemCategory === 'All Categories' && currentCategory === '') || 
            itemCategory === currentCategory) {
            item.classList.add('active');
        }
    });
}

// Perform search
function performSearch() {
    const query = searchInput.value.trim();
    if (!query) return;
    
    fetch('api.php?action=search_tools&query=' + encodeURIComponent(query))
        .then(response => response.json())
        .then(tools => {
            currentTools = tools;
            currentCategory = '';
            updateCategorySelection();
            displayTools(tools);
        })
        .catch(error => {
            console.error('Error searching tools:', error);
            // Search locally if API fails
            const searchResults = allTools.filter(tool => 
                tool.name.toLowerCase().includes(query.toLowerCase()) || 
                tool.category.toLowerCase().includes(query.toLowerCase()) ||
                (tool.description && tool.description.toLowerCase().includes(query.toLowerCase()))
            );
            currentTools = searchResults;
            displayTools(searchResults);
        });
}

// Display tools in grid
function displayTools(tools) {
    if (!toolsGrid) return;
    
    toolsGrid.innerHTML = '';
    
    if (tools.length === 0) {
        toolsGrid.innerHTML = `
            <div class="no-results">
                <i class="fas fa-search"></i>
                <h3>No tools found</h3>
                <p>Try a different search term or browse by category</p>
            </div>
        `;
        if (toolsCount) {
            toolsCount.textContent = '0 tools found';
        }
        return;
    }
    
    // Sort tools based on current sort option
    const sortedTools = sortToolsArray(tools);
    
    if (toolsCount) {
        toolsCount.textContent = `${tools.length} tool${tools.length === 1 ? '' : 's'} found`;
        if (currentCategory) {
            toolsCount.textContent += ` in ${currentCategory}`;
        }
    }
    
    sortedTools.forEach((tool, index) => {
        const card = document.createElement('div');
        card.className = 'tool-card fade-in';
        card.dataset.id = tool.id;
        card.style.animationDelay = `${index * 0.05}s`;
        
        let imageUrl = tool.image_url || 'images/placeholder.jpg';
        let categoryClass = getCategoryClass(tool.category);
        
        card.innerHTML = `
            <div class="tool-image" style="background-image: url(${imageUrl})"></div>
            <div class="tool-info">
                <span class="category-badge ${categoryClass}">
                    ${getCategoryIcon(tool.category)} ${tool.category}
                </span>
                <h3>${tool.name}</h3>
                <p>${tool.description ? tool.description.substring(0, 100) + (tool.description.length > 100 ? '...' : '') : ''}</p>
                <button class="view-details-btn">
                    <i class="fas fa-info-circle"></i> View Details
                </button>
            </div>
        `;
        
        card.addEventListener('click', () => openToolDetails(tool.id));
        toolsGrid.appendChild(card);
    });
}

// Display recent tools
function displayRecentTools(tools) {
    if (!recentToolsGrid) return;
    
    recentToolsGrid.innerHTML = '';
    
    tools.forEach((tool, index) => {
        const card = document.createElement('div');
        card.className = 'tool-card fade-in';
        card.dataset.id = tool.id;
        card.style.animationDelay = `${index * 0.05}s`;
        
        let imageUrl = tool.image_url || 'images/placeholder.jpg';
        let categoryClass = getCategoryClass(tool.category);
        
        card.innerHTML = `
            <div class="tool-image" style="background-image: url(${imageUrl})"></div>
            <div class="tool-info">
                <span class="category-badge ${categoryClass}">${tool.category}</span>
                <h3>${tool.name}</h3>
            </div>
        `;
        
        card.addEventListener('click', () => openToolDetails(tool.id));
        recentToolsGrid.appendChild(card);
    });
}

// Display popular tools
function displayPopularTools(tools) {
    if (!popularToolsList) return;
    
    popularToolsList.innerHTML = '';
    
    tools.forEach(tool => {
        const item = document.createElement('div');
        item.className = 'popular-tools-item';
        item.dataset.id = tool.id;
        
        let imageUrl = tool.image_url || 'images/placeholder.jpg';
        
        item.innerHTML = `
            <img src="${imageUrl}" alt="${tool.name}">
            <div class="popular-tools-item-info">
                <h4>${tool.name}</h4>
                <p>${tool.category}</p>
            </div>
        `;
        
        item.addEventListener('click', () => openToolDetails(tool.id));
        popularToolsList.appendChild(item);
    });
}

// Open tool details modal
function openToolDetails(id) {
    fetch('api.php?action=get_tool&id=' + id)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                console.error(data.error);
                return;
            }
            
            displayToolModal(data);
        })
        .catch(error => {
            console.error('Error loading tool details:', error);
            // If API fails, try to find tool in current tools
            const tool = allTools.find(t => t.id == id);
            if (tool) {
                displayToolModal({
                    tool: tool,
                    recipes: [],
                    troubleshooting: [],
                    related_tools: []
                });
            }
        });
}

// Display tool modal
function displayToolModal(data) {
    if (!toolModal || !toolDetails) return;
    
    const tool = data.tool;
    const recipes = data.recipes || [];
    const troubleshooting = data.troubleshooting || [];
    
    let imageUrl = tool.image_url || 'images/placeholder.jpg';
    let categoryClass = getCategoryClass(tool.category);
    
    // Create category badge
    let categoryBadge = `<span class="category-badge ${categoryClass}">${getCategoryIcon(tool.category)} ${tool.category}</span>`;
    
    let recipeHTML = '';
    if (recipes.length > 0) {
        recipeHTML = `
            <div class="tool-details-section recipes-section">
                <h3><i class="fas fa-utensil-spoon"></i> Recipes Using This Tool</h3>
                <div class="recipes-list">
                    ${recipes.map(recipe => `
                        <div class="recipe-card">
                            <h4>${recipe.name}</h4>
                            <div class="recipe-content">
                                <div class="ingredients">
                                    <h5>Ingredients</h5>
                                    <p>${recipe.ingredients}</p>
                                </div>
                                <div class="instructions">
                                    <h5>Instructions</h5>
                                    <ol>
                                        ${recipe.instructions
                                            .split('\n')
                                            .map(step => step.trim())
                                            .filter(step => step)
                                            .map(step => {
                                                // Remove numbering if it exists
                                                return `<li>${step.replace(/^\d+\.\s*/, '')}</li>`;
                                            })
                                            .join('')
                                        }
                                    </ol>
                                </div>
                            </div>
                        </div>
                    `).join('')}
                </div>
            </div>
        `;
    }
    
    let troubleshootingHTML = '';
    if (troubleshooting.length > 0) {
        troubleshootingHTML = `
            <div class="tool-details-section troubleshooting-section">
                <h3><i class="fas fa-wrench"></i> Troubleshooting Tips</h3>
                <div class="troubleshooting-list">
                    ${troubleshooting.map(tip => `
                        <div class="troubleshooting-card">
                            <div class="problem">
                                <h5><i class="fas fa-exclamation-circle"></i> Problem</h5>
                                <p>${tip.problem}</p>
                            </div>
                            <div class="solution">
                                <h5><i class="fas fa-check-circle"></i> Solution</h5>
                                <p>${tip.solution}</p>
                            </div>
                        </div>
                    `).join('')}
                </div>
            </div>
        `;
    }
    
    toolDetails.innerHTML = `
        <div class="tool-header">
            <div class="tool-image-container">
                <img src="${imageUrl}" alt="${tool.name}">
            </div>
            <div class="tool-header-info">
                <h2>${tool.name}</h2>
                ${categoryBadge}
                <p>${tool.description || ''}</p>
                <button class="print-button" onclick="window.print()">
                    <i class="fas fa-print"></i> Print Instructions
                </button>
            </div>
        </div>
        
        <div class="tool-details-grid">
            <div class="tool-details-section usage-section">
                <h3><i class="fas fa-book"></i> How to Use</h3>
                <div class="usage-instructions">
                    <p>${tool.usage_instructions || 'No usage instructions available.'}</p>
                </div>
            </div>
            
            <div class="tool-details-section cleaning-section">
                <h3><i class="fas fa-broom"></i> Maintenance & Cleaning</h3>
                <div class="cleaning-tips">
                    <p>${tool.cleaning_tips || 'No cleaning instructions available.'}</p>
                </div>
            </div>
            
            ${tool.safety_tips ? `
            <div class="tool-details-section safety-section">
                <h3><i class="fas fa-shield-alt"></i> Safety Tips</h3>
                <div class="safety-tips">
                    <p>${tool.safety_tips}</p>
                </div>
            </div>
            ` : ''}
        </div>
        
        ${recipeHTML}
        
        ${troubleshootingHTML}
    `;
    
    toolModal.style.display = 'block';
    document.body.style.overflow = 'hidden';
}

// Helper Functions
function getCategoryIcon(category) {
    switch (category) {
        case 'Cutting Tools':
            return '<i class="fas fa-cut"></i>';
        case 'Small Appliances':
            return '<i class="fas fa-blender"></i>';
        case 'Major Appliances':
            return '<i class="fas fa-blender-phone"></i>';
        case 'Measuring Tools':
            return '<i class="fas fa-weight"></i>';
        case 'Cookware':
            return '<i class="fas fa-fire"></i>';
        case 'Baking Tools':
            return '<i class="fas fa-birthday-cake"></i>';
        case 'Food Preparation Tools':
            return '<i class="fas fa-mortar-pestle"></i>';
        case 'Kitchen Gadgets':
            return '<i class="fas fa-tools"></i>';
        case 'Storage & Organization':
            return '<i class="fas fa-box"></i>';
        case 'Safety & Protection':
            return '<i class="fas fa-shield-alt"></i>';
        default:
            return '<i class="fas fa-utensils"></i>';
    }
}

function getCategoryClass(category) {
    const formatted = category.toLowerCase().replace(/\s+|&/g, '-');
    return formatted;
}

function sortToolsArray(tools) {
    const sortedTools = [...tools];
    
    switch (currentSort) {
        case 'name-asc':
            return sortedTools.sort((a, b) => a.name.localeCompare(b.name));
        case 'name-desc':
            return sortedTools.sort((a, b) => b.name.localeCompare(a.name));
        case 'category':
            return sortedTools.sort((a, b) => a.category.localeCompare(b.category) || a.name.localeCompare(b.name));
        default:
            return sortedTools;
    }
}

// Fallback data in case API fails
function getFallbackTools() {
    return [
        {
            id: 1,
            name: "Chef's Knife",
            category: "Cutting Tools",
            description: "A versatile knife used for chopping, slicing, and dicing.",
            image_url: "images/chefs_knife.jpg",
            usage_instructions: "Hold the knife with your dominant hand, gripping the handle firmly. Use a rocking motion to chop vegetables and herbs. For slicing, use a smooth forward motion.",
            cleaning_tips: "Wash by hand with warm soapy water. Dry immediately to prevent rusting. Store in a knife block or with a blade guard."
        },
        {
            id: 2,
            name: "Air Fryer",
            category: "Major Appliances",
            description: "A countertop appliance that cooks food by circulating hot air.",
            image_url: "images/air_fryer.jpg",
            usage_instructions: "Preheat for 3-5 minutes. Arrange food in a single layer in the basket. Shake or turn food halfway through cooking for even results.",
            cleaning_tips: "Let cool completely before cleaning. Wash removable parts with warm soapy water. Wipe the inside with a damp cloth."
        },
        {
            id: 3,
            name: "Digital Scale",
            category: "Measuring Tools",
            description: "A precise tool for weighing ingredients.",
            image_url: "images/digital_scale.jpg",
            usage_instructions: "Place on a flat surface. Tare (zero) the scale before adding ingredients. Don't exceed the maximum weight capacity.",
            cleaning_tips: "Wipe with a slightly damp cloth. Never submerge in water. Remove batteries if storing for extended periods."
        },
        {
            id: 4,
            name: "Cast Iron Skillet",
            category: "Cookware",
            description: "A heavy, durable pan that retains heat well.",
            image_url: "images/cast_iron.jpg",
            usage_instructions: "Preheat before adding food. Use oil or butter to prevent sticking. Avoid cooking acidic foods for long periods.",
            cleaning_tips: "Clean while still warm with hot water and a brush. Avoid soap when possible. Dry thoroughly and apply a thin coat of oil."
        },
        {
            id: 5,
            name: "Food Processor",
            category: "Small Appliances",
            description: "A versatile appliance for chopping, shredding, and pureeing.",
            image_url: "images/food_processor.jpg",
            usage_instructions: "Secure the bowl and blade before use. Cut food into manageable pieces. Use pulse function for better control.",
            cleaning_tips: "Disassemble completely before cleaning. Wash removable parts with warm soapy water."
        }
    ];
}