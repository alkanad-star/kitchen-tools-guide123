-- Kitchen Tools Database Schema

-- Table for kitchen tools
CREATE TABLE kitchen_tools (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    description TEXT NOT NULL,
    usage_instructions TEXT NOT NULL,
    cleaning_tips TEXT NOT NULL,
    safety_tips TEXT DEFAULT '', 
    image_url TEXT
);

-- Table for recipes that use specific tools
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tool_id INTEGER,
    name TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL,
    preparation_time TEXT DEFAULT '15 minutes',
    difficulty_level TEXT DEFAULT 'Easy',
    FOREIGN KEY (tool_id) REFERENCES kitchen_tools(id)
);

-- Table for troubleshooting tips
CREATE TABLE troubleshooting (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tool_id INTEGER,
    problem TEXT NOT NULL,
    solution TEXT NOT NULL,
    FOREIGN KEY (tool_id) REFERENCES kitchen_tools(id)
);

-- Insert sample data for kitchen tools
INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Chef''s Knife', 'Cutting Tools', 'A versatile knife used for chopping, slicing, and dicing.', 
'Hold the knife with your dominant hand, gripping the handle firmly. Use a rocking motion to chop vegetables and herbs. For slicing, use a smooth forward motion.', 
'Wash by hand with warm soapy water. Dry immediately to prevent rusting. Store in a knife block or with a blade guard.', 
'images/chefs_knife.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Immersion Blender', 'Small Appliances', 'A handheld blender used for pureeing soups and making smoothies.', 
'Insert the blender head into your mixture before turning it on. Move it around to ensure even blending. Never run it outside of liquid.', 
'Detach the blending arm and wash it separately. Wipe the motor unit with a damp cloth. Never submerge the motor in water.', 
'images/immersion_blender.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Air Fryer', 'Major Appliances', 'A countertop appliance that cooks food by circulating hot air.', 
'Preheat for 3-5 minutes. Arrange food in a single layer in the basket. Shake or turn food halfway through cooking for even results.', 
'Let cool completely before cleaning. Wash removable parts with warm soapy water. Wipe the inside with a damp cloth.', 
'images/air_fryer.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Mandoline Slicer', 'Cutting Tools', 'A tool for slicing vegetables uniformly and quickly.', 
'Always use the hand guard. Slide the food over the blade with even pressure. Adjust the thickness setting as needed.', 
'Carefully wash by hand, avoiding direct contact with blades. Dry thoroughly before storage.', 
'images/mandoline.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Stand Mixer', 'Major Appliances', 'A powerful mixer for doughs, batters, and more.', 
'Attach the appropriate beater for your recipe. Start on low speed and gradually increase. Don''t overmix.', 
'Wipe the base with a damp cloth. Wash attachments with soapy water. Never submerge the motor.', 
'images/stand_mixer.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Food Processor', 'Small Appliances', 'A versatile appliance for chopping, shredding, and pureeing.', 
'Secure the bowl and blade before use. Cut food into manageable pieces. Use pulse function for better control.', 
'Disassemble completely before cleaning. Wash removable parts with warm soapy water.', 
'images/food_processor.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Pressure Cooker', 'Major Appliances', 'A sealed pot that cooks food quickly under pressure.', 
'Ensure the sealing ring is properly positioned. Don''t fill beyond the maximum line. Release pressure safely after cooking.', 
'Clean the lid and sealing ring thoroughly. Remove and clean the valve. Wipe the exterior with a damp cloth.', 
'images/pressure_cooker.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Digital Scale', 'Measuring Tools', 'A precise tool for weighing ingredients.', 
'Place on a flat surface. Tare (zero) the scale before adding ingredients. Don''t exceed the maximum weight capacity.', 
'Wipe with a slightly damp cloth. Never submerge in water. Remove batteries if storing for extended periods.', 
'images/digital_scale.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Meat Thermometer', 'Measuring Tools', 'A tool for measuring internal temperature of meats.', 
'Insert into the thickest part of the meat without touching bone. Wait for the reading to stabilize.', 
'Wipe with a damp cloth after use. Some models are dishwasher safe; check manufacturer instructions.', 
'images/meat_thermometer.jpg');

INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, image_url) VALUES
('Cast Iron Skillet', 'Cookware', 'A heavy, durable pan that retains heat well.', 
'Preheat before adding food. Use oil or butter to prevent sticking. Avoid cooking acidic foods for long periods.', 
'Clean while still warm with hot water and a brush. Avoid soap when possible. Dry thoroughly and apply a thin coat of oil.', 
'images/cast_iron.jpg');

-- Insert sample recipes
INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(1, 'Diced Vegetable Salad', 'Cucumber, tomatoes, bell peppers, red onion, olive oil, lemon juice, salt, pepper', 
'1. Dice all vegetables using the chef''s knife
2. Combine in a bowl
3. Dress with olive oil and lemon juice
4. Season with salt and pepper',
'15 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(1, 'Herb-Infused Oil', 'Fresh herbs (rosemary, thyme, basil), olive oil, garlic', 
'1. Finely chop herbs and garlic with chef''s knife
2. Heat oil to warm (not hot)
3. Add herbs and garlic
4. Let steep for 1 hour
5. Strain and store in a sealed container',
'1 hour 15 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(2, 'Creamy Tomato Soup', 'Tomatoes, onion, garlic, vegetable broth, heavy cream, basil, salt, pepper', 
'1. Sauté onion and garlic
2. Add tomatoes and broth, simmer for 20 minutes
3. Use immersion blender to puree until smooth
4. Stir in cream and seasonings',
'40 minutes', 'Medium');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(2, 'Fruit Smoothie', 'Frozen berries, banana, yogurt, honey, milk', 
'1. Combine all ingredients in a tall container
2. Insert immersion blender
3. Blend until smooth
4. Add more liquid if needed',
'10 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(3, 'Crispy Air Fryer Chicken Wings', 'Chicken wings, baking powder, salt, pepper, garlic powder, paprika', 
'1. Pat wings dry and toss with baking powder and seasonings
2. Preheat air fryer to 380°F
3. Arrange wings in a single layer
4. Cook for 25 minutes, turning halfway through',
'35 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(3, 'Air Fryer Roasted Vegetables', 'Assorted vegetables, olive oil, salt, pepper, dried herbs', 
'1. Cut vegetables into even-sized pieces
2. Toss with oil and seasonings
3. Air fry at 400°F for 15 minutes
4. Shake basket halfway through cooking',
'20 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(4, 'Uniform Cucumber Salad', 'Cucumber, red onion, vinegar, sugar, salt, dill', 
'1. Use mandoline to slice cucumber and onion thinly
2. Mix vinegar, sugar, and salt to make dressing
3. Pour over vegetables
4. Add chopped dill and refrigerate for 1 hour',
'1 hour 15 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(5, 'Classic Chocolate Chip Cookies', 'Butter, sugar, brown sugar, eggs, vanilla, flour, baking soda, salt, chocolate chips', 
'1. Cream butter and sugars in stand mixer
2. Add eggs and vanilla
3. Mix in dry ingredients on low speed
4. Fold in chocolate chips
5. Bake at 375°F for 10-12 minutes',
'30 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(6, 'Quick Salsa', 'Tomatoes, onion, jalapeño, cilantro, lime juice, salt', 
'1. Roughly chop ingredients
2. Add to food processor
3. Pulse until desired consistency is reached
4. Add lime juice and salt to taste',
'15 minutes', 'Easy');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(7, 'One-Pot Pressure Cooker Risotto', 'Arborio rice, onion, garlic, white wine, chicken broth, parmesan cheese, butter', 
'1. Sauté onion and garlic in pressure cooker
2. Add rice and toast briefly
3. Add wine and broth
4. Seal and cook on high pressure for 5 minutes
5. Quick release, stir in cheese and butter',
'25 minutes', 'Medium');

INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
(10, 'Perfect Seared Steak', 'Steak, salt, pepper, garlic, butter, herbs', 
'1. Preheat cast iron skillet until very hot
2. Season steak generously
3. Add to pan and sear 3-4 minutes per side
4. Add butter, garlic, and herbs
5. Baste steak with butter
6. Rest before slicing',
'20 minutes', 'Medium');

-- Insert troubleshooting tips
INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(1, 'Knife is dull', 'Use a knife sharpener or honing steel to restore the edge. For very dull knives, consider professional sharpening.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(1, 'Knife handle feels loose', 'For wooden handles, it may have dried out. Some knives can be tightened by carefully turning the pommel. For severe cases, consult a professional knife repair service.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(2, 'Blender is stuck or jammed', 'Unplug the blender. Check for food caught in the blades. Clean thoroughly before trying again.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(2, 'Blender leaks from bottom', 'The gasket or seal may be worn or damaged. Check if it needs to be replaced or properly re-seated.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(3, 'Food not crispy in air fryer', 'Make sure not to overcrowd the basket. Try cooking at a higher temperature or for a longer time. Pat food dry before cooking.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(3, 'Air fryer produces smoke', 'There may be excess oil or food residue in the basket. Clean thoroughly between uses. Reduce the amount of oil used.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(4, 'Mandoline blade is dull', 'Many mandolines have replaceable blades. Check the manufacturer''s website for replacement parts.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(4, 'Food sticks to mandoline', 'Make sure the blade is clean and sharp. Some foods cut better when chilled. Use the guard and apply even pressure.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(5, 'Stand mixer makes loud noise', 'Check the beater height and adjust if needed. Ensure all attachments are properly secured. If noise persists, the motor may need servicing.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(5, 'Dough climbs up the hook', 'You may have too much dough for the mixer size. Reduce the amount or divide the batch. Make sure you''re using the correct hook for your dough type.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(6, 'Food processor doesn''t start', 'Check if all components are properly aligned and locked in place. Most food processors have safety mechanisms that prevent operation if not assembled correctly.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(6, 'Uneven chopping in food processor', 'Don''t overload the bowl. Process in smaller batches for more consistent results.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(7, 'Pressure cooker won''t seal', 'Check the sealing ring for damage or food residue. Ensure the valve is in the correct position. Verify that there is enough liquid in the pot.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(7, 'Food burns in pressure cooker', 'There may not be enough liquid. Always ensure you have the minimum required amount. Some models have a tendency to overheat on the bottom - try using a trivet.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(8, 'Scale gives inconsistent readings', 'Place on a flat, stable surface. Check for low battery. Calibrate if your model allows it.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(8, 'Scale turns off during use', 'Most digital scales have an auto-off feature to save battery. Look for a setting to extend this time or press a button periodically to keep it active.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(9, 'Thermometer reads incorrectly', 'Check for battery issues. Some thermometers need calibration - follow manufacturer instructions. Ensure the probe is inserted correctly.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(10, 'Food sticks to cast iron', 'The pan may not be properly seasoned. Clean thoroughly and re-season by coating with oil and baking in oven at 350°F for an hour.');

INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
(10, 'Cast iron has rust spots', 'Scrub with steel wool to remove rust. Wash, dry thoroughly, and re-season by coating with oil and baking in oven at 350°F for an hour.');