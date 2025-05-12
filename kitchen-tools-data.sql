-- Insert data for kitchen tools
INSERT INTO kitchen_tools (name, category, description, usage_instructions, cleaning_tips, safety_tips, image_url) VALUES
-- Cutting Tools
('Chef''s Knife', 'Cutting Tools', 'A versatile knife used for chopping, slicing, and dicing.', 
'Hold the knife with your dominant hand, gripping the handle firmly. Use a rocking motion to chop vegetables and herbs. For slicing, use a smooth forward motion.', 
'Wash by hand with warm soapy water. Dry immediately to prevent rusting. Store in a knife block or with a blade guard.', 
'Always cut away from your body. Keep fingers curled under and away from the blade. Use a proper cutting board to avoid slipping.',
'images/chefs_knife.jpg'),

('Mandoline Slicer', 'Cutting Tools', 'A tool for slicing vegetables uniformly and quickly.', 
'Set desired thickness. Place food on top and slide over the blade using even pressure. Always use the handguard to protect fingers.', 
'Carefully wash by hand, avoiding direct contact with blades. Dry thoroughly before storage.', 
'Never use without the handguard. Keep fingers away from the blade at all times. Store with safety lock engaged if available.',
'images/mandoline.jpg'),

('Kitchen Shears', 'Cutting Tools', 'Multi-purpose scissors designed for food preparation.', 
'Hold with thumb and fingers in the designated rings. Use for cutting herbs, trimming meat, opening packaging, or snipping twine.', 
'Most kitchen shears can be separated for thorough cleaning. Wash by hand and dry completely before reassembling.', 
'Keep fingers away from the blade area. Be cautious when cutting slippery items. Close when not in use.',
'images/kitchen_shears.jpg'),

-- Small Appliances
('Immersion Blender', 'Small Appliances', 'A handheld blender used for pureeing soups and making smoothies.', 
'Insert the blender head into your mixture before turning it on. Move it around to ensure even blending. Never run it outside of liquid.', 
'Detach the blending arm and wash it separately. Wipe the motor unit with a damp cloth. Never submerge the motor in water.', 
'Keep fingers away from the blades. Unplug before attaching or removing parts. Never touch blades while plugged in.',
'images/immersion_blender.jpg'),

('Food Processor', 'Small Appliances', 'A versatile appliance for chopping, shredding, and pureeing.', 
'Secure the bowl and blade before use. Cut food into manageable pieces. Use pulse function for better control.', 
'Disassemble completely before cleaning. Wash removable parts with warm soapy water.', 
'Never operate without the lid securely locked. Keep hands away from the feed tube when operating. Unplug when not in use.',
'images/food_processor.jpg'),

('Electric Mixer', 'Small Appliances', 'A handheld or stand mixer for beating, whipping, and mixing ingredients.', 
'Start at low speed and gradually increase. Use the appropriate attachments for different tasks (dough hooks, whisk, beaters).', 
'Remove attachments for cleaning. Wipe the motor housing with a damp cloth. Never immerse in water.', 
'Keep fingers and utensils away from beaters during operation. Turn off before changing attachments. Unplug when not in use.',
'images/electric_mixer.jpg'),

-- Major Appliances
('Air Fryer', 'Major Appliances', 'A countertop appliance that cooks food by circulating hot air.', 
'Preheat for 3-5 minutes. Arrange food in a single layer in the basket. Shake or turn food halfway through cooking for even results.', 
'Let cool completely before cleaning. Wash removable parts with warm soapy water. Wipe the inside with a damp cloth.', 
'Avoid touching the interior during or immediately after cooking. Use proper handling tools. Place on heat-resistant surface.',
'images/air_fryer.jpg'),

('Pressure Cooker', 'Major Appliances', 'A sealed pot that cooks food quickly under pressure.', 
'Ensure the sealing ring is properly positioned. Don''t fill beyond the maximum line. Release pressure safely after cooking.', 
'Clean the lid and sealing ring thoroughly. Remove and clean the valve. Wipe the exterior with a damp cloth.', 
'Never force the lid open. Use proper pressure release methods. Keep face and hands away during pressure release.',
'images/pressure_cooker.jpg'),

('Slow Cooker', 'Major Appliances', 'An appliance that slowly cooks food at a low temperature over several hours.', 
'Layer ingredients properly, with longer-cooking items at the bottom. Don''t overfill. Keep the lid on during cooking.', 
'Allow to cool before cleaning. Wash the removable insert with warm soapy water. Wipe the heating unit with a damp cloth.', 
'Place on a heat-resistant surface. Use caution when removing the lid to avoid steam burns. Handle the hot insert carefully.',
'images/slow_cooker.jpg'),

-- Measuring Tools
('Digital Scale', 'Measuring Tools', 'A precise tool for weighing ingredients.', 
'Place on a flat surface. Tare (zero) the scale before adding ingredients. Don''t exceed the maximum weight capacity.', 
'Wipe with a slightly damp cloth. Never submerge in water. Remove batteries if storing for extended periods.', 
'Avoid placing hot items directly on the scale surface. Keep away from water and high humidity.',
'images/digital_scale.jpg'),

('Measuring Cups and Spoons', 'Measuring Tools', 'Sets of standardized cups and spoons for measuring ingredients.', 
'Use dry measuring cups for dry ingredients and liquid measuring cups for liquids. Level off dry ingredients with a straight edge.', 
'Wash with warm soapy water or place in dishwasher if dishwasher-safe. Dry completely before storage.', 
'Use caution when measuring hot liquids. Ensure proper stability when measuring to avoid spills.',
'images/measuring_cups.jpg'),

('Meat Thermometer', 'Measuring Tools', 'A tool for measuring internal temperature of meats.', 
'Insert into the thickest part of the meat without touching bone. Wait for the reading to stabilize.', 
'Wipe with a damp cloth after use. Some models are dishwasher safe; check manufacturer instructions.', 
'Use caution when inserting into hot foods. Clean promptly after use to prevent cross-contamination.',
'images/meat_thermometer.jpg'),

-- Cookware
('Cast Iron Skillet', 'Cookware', 'A heavy, durable pan that retains heat well.', 
'Preheat before adding food. Use oil or butter to prevent sticking. Avoid cooking acidic foods for long periods.', 
'Clean while still warm with hot water and a brush. Avoid soap when possible. Dry thoroughly and apply a thin coat of oil.', 
'Always use oven mitts or handles - cast iron retains heat for a long time. Use caution when lifting due to weight.',
'images/cast_iron.jpg'),

('Non-stick Pan', 'Cookware', 'A pan with a non-stick coating for easy food release and cleanup.', 
'Use medium or low heat to preserve the coating. Use wooden or silicone utensils to avoid scratching the surface.', 
'Allow to cool before cleaning. Use gentle dish soap and soft sponges. Never use abrasive cleaners or scrubbers.', 
'Avoid overheating which can release harmful fumes from some non-stick coatings. Never use metal utensils.',
'images/nonstick_pan.jpg'),

('Dutch Oven', 'Cookware', 'A heavy pot with a tight-fitting lid, perfect for slow cooking and braising.', 
'Preheat gradually to avoid thermal shock. Use for both stovetop and oven cooking. Excellent for long, slow cooking.', 
'Allow to cool before washing. Use warm water and mild soap. Dry thoroughly to prevent rusting.', 
'Use appropriate protection when handling - gets extremely hot and retains heat. Handle with oven mitts.',
'images/dutch_oven.jpg'),

-- Baking Tools
('Pastry Blender', 'Baking Tools', 'A handheld tool with multiple wires for cutting butter into flour.', 
'Hold the handle firmly and press the wires down into the flour-butter mixture repeatedly until you achieve a crumbly texture.', 
'Wash with warm soapy water and dry thoroughly. Ensure no dough remains between the wires.', 
'Handle carefully to avoid bending the wires. Keep fingers away from the cutting edges.',
'images/pastry_blender.jpg'),

('Rolling Pin', 'Baking Tools', 'A cylindrical tool for flattening and shaping dough.', 
'Dust with flour to prevent sticking. Apply even pressure and roll from the center outward. Rotate dough occasionally.', 
'Wash with warm soapy water. Wooden pins should be dried immediately and treated periodically with food-grade mineral oil.', 
'Use on stable surfaces to prevent slipping. Handle with dry hands to maintain proper grip.',
'images/rolling_pin.jpg'),

('Silicone Baking Mat', 'Baking Tools', 'A non-stick surface for rolling dough and lining baking sheets.', 
'Place on a flat surface or baking sheet. No need for additional greasing. Can withstand high oven temperatures.', 
'Wash with warm soapy water. Don''t use abrasive cleaners or sharp objects. Store flat or rolled, not folded.', 
'Never cut directly on the mat. Check manufacturer''s maximum temperature rating. Don''t place directly on heat sources.',
'images/silicone_mat.jpg'),

-- Food Preparation Tools
('Box Grater', 'Food Preparation Tools', 'A multi-sided tool with different grating surfaces.', 
'Hold firmly with one hand and move food against the desired grating surface with the other. Use downward pressure.', 
'Rinse immediately after use to prevent food from drying. Clean with a brush to remove food from small holes. Dishwasher-safe.', 
'Keep fingers away from the grating surface. Use the flat palm of your hand when food pieces get small.',
'images/box_grater.jpg'),

('Colander', 'Food Preparation Tools', 'A perforated bowl used for draining liquids from solids.', 
'Place in sink before pouring hot liquids. For pasta, drain quickly to prevent sticking. Shake gently to remove excess water.', 
'Wash with warm soapy water. Make sure all holes are clear of food particles. Most are dishwasher-safe.', 
'Use caution when draining hot liquids to avoid steam burns. Ensure stability in the sink before pouring.',
'images/colander.jpg'),

('Salad Spinner', 'Food Preparation Tools', 'A tool for removing excess water from washed greens and herbs.', 
'Place washed greens in the basket. Close the lid securely. Spin using the handle or button mechanism. Stop when water is removed.', 
'Disassemble for thorough cleaning. Wash with warm soapy water. Dry before storage.', 
'Ensure lid is secured before spinning. Place on a stable surface to prevent tipping during use.',
'images/salad_spinner.jpg'),

-- Kitchen Gadgets
('Garlic Press', 'Kitchen Gadgets', 'A tool that crushes garlic cloves to release flavor and oils.', 
'Place unpeeled garlic clove in the chamber. Squeeze handles firmly. Scrape off pressed garlic with a knife.', 
'Rinse immediately after use. Use included cleaning tool or a small brush to remove garlic residue from holes.', 
'Keep fingers away from the pressing mechanism. Apply even pressure to avoid slipping.',
'images/garlic_press.jpg'),

('Vegetable Peeler', 'Kitchen Gadgets', 'A tool for removing the skin from fruits and vegetables.', 
'Hold the vegetable in one hand and the peeler in the other. Apply light pressure and pull the peeler toward you.', 
'Rinse after use. Clean around the blade carefully. Most are dishwasher-safe.', 
'Always peel away from your body and fingers. Keep blade covered when stored in drawers.',
'images/vegetable_peeler.jpg'),

('Can Opener', 'Kitchen Gadgets', 'A tool for opening sealed cans by cutting around the lid.', 
'Position the cutting wheel on the can rim. Squeeze handles and rotate the knob clockwise. Continue until the lid is cut around.', 
'Clean after each use, especially around the gears and cutting wheel. Wipe with a damp cloth or wash with warm soapy water.', 
'Be cautious of sharp edges on opened cans. Keep fingers away from the cutting wheel. Check for rust regularly.',
'images/can_opener.jpg'),

-- Storage & Organization
('Food Storage Containers', 'Storage & Organization', 'Containers for storing leftovers and meal prep.', 
'Cool food before storing. Leave some space at the top for expansion when freezing. Seal tightly to maintain freshness.', 
'Wash with warm soapy water. Remove stains with baking soda paste. Check for cracks or damage regularly.', 
'Never microwave containers not labeled microwave-safe. Allow steam to escape when reheating to prevent burns.',
'images/storage_containers.jpg'),

('Kitchen Drawer Organizers', 'Storage & Organization', 'Dividers and trays for organizing utensils and tools.', 
'Measure drawers before purchasing. Arrange tools by frequency of use, with most used items most accessible.', 
'Remove from drawer and wipe clean periodically. Check for crumbs and debris in corners.', 
'Install securely to prevent shifting when opening and closing drawers. Arrange sharp tools safely.',
'images/drawer_organizers.jpg'),

('Spice Rack', 'Storage & Organization', 'A storage system for organizing and displaying spices.', 
'Arrange alphabetically or by frequency of use. Keep away from heat and direct sunlight to preserve flavor.', 
'Wipe clean with a damp cloth. Check spice containers for spills and clean as needed.', 
'Install securely if wall-mounted. Place in stable location if freestanding to prevent tipping.',
'images/spice_rack.jpg'),

-- Safety & Protection
('Oven Mitts', 'Safety & Protection', 'Insulated gloves for handling hot dishes and pans.', 
'Cover hands completely before handling hot items. Check for wear or thin spots before use.', 
'Machine wash according to manufacturer instructions. Air dry completely before storage.', 
'Replace when worn or damaged. Do not use wet mitts as water conducts heat. Keep away from open flames.',
'images/oven_mitts.jpg'),

('Cut-Resistant Gloves', 'Safety & Protection', 'Protective gloves for use with sharp cutting tools.', 
'Wear when using mandoline slicers, graters, or when doing fine knife work. Choose proper size for dexterity.', 
'Wash according to manufacturer instructions. Allow to dry completely before storage.', 
'Not completely cut-proof - still use caution. Not heat-resistant unless specifically labeled as such.',
'images/cut_gloves.jpg'),

('Kitchen Fire Extinguisher', 'Safety & Protection', 'A compact fire extinguisher designed for kitchen fires.', 
'For grease fires, aim at the base of the fire. Use the PASS method: Pull, Aim, Squeeze, Sweep.', 
'Check pressure gauge monthly. Have professionally serviced according to manufacturer schedule.', 
'Know how to use before an emergency. Never use water on grease fires. Replace when expired.',
'images/fire_extinguisher.jpg');

-- Insert recipes data
INSERT INTO recipes (tool_id, name, ingredients, instructions, preparation_time, difficulty_level) VALUES
-- Chef's Knife Recipes
(1, 'Classic French Mirepoix', 'Onions, carrots, celery, olive oil, salt, pepper', 
'1. Dice onions, carrots, and celery into small, uniform pieces\n2. Heat olive oil in a pan\n3. Add vegetables and sauté until softened\n4. Season with salt and pepper', 
'15 minutes', 'Easy'),

(1, 'Herb-Infused Oil', 'Fresh herbs (rosemary, thyme, basil), olive oil, garlic', 
'1. Finely chop herbs and garlic with chef''s knife\n2. Heat oil to warm (not hot)\n3. Add herbs and garlic\n4. Let steep for 1 hour\n5. Strain and store in a sealed container', 
'1 hour 15 minutes', 'Easy'),

-- Mandoline Slicer Recipes
(2, 'Uniform Cucumber Salad', 'Cucumber, red onion, vinegar, sugar, salt, dill', 
'1. Use mandoline to slice cucumber and onion thinly\n2. Mix vinegar, sugar, and salt to make dressing\n3. Pour over vegetables\n4. Add chopped dill and refrigerate for 1 hour', 
'1 hour 15 minutes', 'Easy'),

(2, 'Homemade Potato Chips', 'Potatoes, vegetable oil, salt, optional seasonings (paprika, garlic powder)', 
'1. Slice potatoes very thinly using the mandoline\n2. Rinse slices and pat dry\n3. Heat oil to 375°F\n4. Fry potato slices until golden brown\n5. Drain on paper towels and season immediately', 
'30 minutes', 'Medium'),

-- Kitchen Shears Recipes
(3, 'Herb-Snipped Pizza', 'Pizza dough, tomato sauce, mozzarella, fresh herbs (basil, oregano), olive oil', 
'1. Prepare pizza with sauce and cheese\n2. Use kitchen shears to snip fresh herbs directly onto pizza\n3. Drizzle with olive oil\n4. Bake according to dough instructions', 
'25 minutes', 'Easy'),

(3, 'Easy Cut Chicken Pieces', 'Whole chicken, olive oil, salt, pepper, herbs', 
'1. Place chicken on cutting board\n2. Use kitchen shears to cut along backbone and remove it\n3. Snip chicken into desired pieces\n4. Season with oil, salt, pepper, and herbs\n5. Roast at 425°F until internal temperature reaches 165°F', 
'1 hour', 'Medium'),

-- Immersion Blender Recipes
(4, 'Creamy Tomato Soup', 'Tomatoes, onion, garlic, vegetable broth, heavy cream, basil, salt, pepper', 
'1. Sauté onion and garlic\n2. Add tomatoes and broth, simmer for 20 minutes\n3. Use immersion blender to puree until smooth\n4. Stir in cream and seasonings', 
'40 minutes', 'Medium'),

(4, 'Quick Homemade Mayonnaise', 'Egg, mustard, lemon juice, salt, vegetable oil', 
'1. Place egg, mustard, lemon juice, and salt in a tall container\n2. Begin blending with immersion blender\n3. Slowly drizzle in oil while continuing to blend\n4. Blend until mixture thickens and emulsifies', 
'10 minutes', 'Medium'),

-- Food Processor Recipes
(5, 'Fresh Homemade Salsa', 'Tomatoes, onion, jalapeño, cilantro, lime juice, salt, garlic', 
'1. Rough chop all ingredients\n2. Add to food processor\n3. Pulse until desired consistency is reached\n4. Adjust seasoning with salt and lime juice', 
'15 minutes', 'Easy'),

(5, 'Food Processor Pie Dough', 'Flour, salt, cold butter, ice water', 
'1. Add flour and salt to food processor\n2. Pulse to combine\n3. Add cold cubed butter and pulse until mixture resembles coarse crumbs\n4. Slowly add ice water while pulsing until dough forms\n5. Chill before rolling', 
'15 minutes (plus chilling time)', 'Medium'),

-- Electric Mixer Recipes
(6, 'Perfect Whipped Cream', 'Heavy cream, powdered sugar, vanilla extract', 
'1. Chill bowl and beaters in freezer for 15 minutes\n2. Add cream, sugar, and vanilla to bowl\n3. Beat on low speed until frothy, then increase to high\n4. Beat until stiff peaks form, being careful not to over-beat', 
'10 minutes', 'Easy'),

(6, 'Fluffy Mashed Potatoes', 'Potatoes, butter, milk or cream, salt, pepper', 
'1. Boil potatoes until fork tender\n2. Drain and return to pot\n3. Add warm butter and milk\n4. Mix on low speed until incorporated, then increase speed\n5. Beat until fluffy, being careful not to over-mix', 
'30 minutes', 'Easy'),

-- Air Fryer Recipes
(7, 'Crispy Air Fryer Chicken Wings', 'Chicken wings, baking powder, salt, pepper, garlic powder, paprika', 
'1. Pat wings dry and toss with baking powder and seasonings\n2. Preheat air fryer to 380°F\n3. Arrange wings in a single layer\n4. Cook for 25 minutes, turning halfway through', 
'35 minutes', 'Easy'),

(7, 'Air Fryer Roasted Vegetables', 'Assorted vegetables, olive oil, salt, pepper, dried herbs', 
'1. Cut vegetables into even-sized pieces\n2. Toss with oil and seasonings\n3. Air fry at 400°F for 15 minutes\n4. Shake basket halfway through cooking', 
'20 minutes', 'Easy'),

-- Pressure Cooker Recipes
(8, 'Quick Pressure Cooker Risotto', 'Arborio rice, onion, garlic, white wine, chicken broth, parmesan cheese, butter', 
'1. Sauté onion and garlic using sauté function\n2. Add rice and toast briefly\n3. Add wine and broth\n4. Seal and cook on high pressure for 5 minutes\n5. Quick release, stir in cheese and butter', 
'25 minutes', 'Medium'),

(8, 'Tender Pressure Cooker Pulled Pork', 'Pork shoulder, broth, BBQ sauce, spices (paprika, garlic powder, brown sugar, salt, pepper)', 
'1. Cut pork into large chunks\n2. Mix spices and rub over pork\n3. Add to pressure cooker with broth\n4. Cook on high pressure for 60 minutes\n5. Natural release, then shred meat and mix with BBQ sauce', 
'1 hour 30 minutes', 'Medium'),

-- Slow Cooker Recipes
(9, 'Slow Cooker Beef Stew', 'Beef chuck, potatoes, carrots, onion, garlic, tomato paste, beef broth, herbs, flour', 
'1. Toss beef with flour, salt, and pepper\n2. Add all ingredients to slow cooker\n3. Cook on low for 8 hours or high for 4 hours\n4. Stir occasionally if possible', 
'8 hours', 'Easy'),

(9, 'Overnight Slow Cooker Oatmeal', 'Steel cut oats, milk, water, cinnamon, maple syrup, dried fruit, nuts', 
'1. Combine all ingredients in slow cooker\n2. Cook on low for 7-8 hours (overnight)\n3. Stir before serving and add additional toppings as desired', 
'8 hours', 'Easy'),

-- Digital Scale Recipes
(10, 'Perfect Ratio Bread', 'Flour, water, salt, yeast', 
'1. Use scale to measure flour (500g), water (350g), salt (10g), and yeast (7g)\n2. Mix and knead until smooth\n3. Let rise until doubled\n4. Shape, proof, and bake at 450°F until golden', 
'3 hours', 'Medium'),

(10, 'Precise French Macarons', 'Almond flour, powdered sugar, egg whites, granulated sugar', 
'1. Weigh out exactly 100g egg whites, 100g granulated sugar, 120g almond flour, 180g powdered sugar\n2. Make meringue with egg whites and granulated sugar\n3. Fold in sifted almond flour and powdered sugar\n4. Pipe onto baking sheets and rest before baking', 
'2 hours', 'Difficult'),

-- Measuring Cups and Spoons Recipes
(11, 'Perfectly Proportioned Vinaigrette', 'Olive oil, vinegar, mustard, honey, salt, pepper', 
'1. Use measuring spoons to measure 1 tbsp mustard and 1 tsp honey\n2. Add 1/4 cup vinegar\n3. Slowly whisk in 3/4 cup olive oil\n4. Season with salt and pepper to taste', 
'10 minutes', 'Easy'),

(11, 'Precision Chocolate Chip Cookies', 'Flour, butter, white sugar, brown sugar, eggs, vanilla, chocolate chips, baking soda, salt', 
'1. Measure 2 1/4 cups flour, 1 tsp baking soda, 1 tsp salt\n2. Cream 1 cup butter with 3/4 cup each white and brown sugar\n3. Add 2 eggs and 1 tsp vanilla\n4. Mix in dry ingredients and 2 cups chocolate chips\n5. Bake at 375°F for 9-11 minutes', 
'30 minutes', 'Easy'),

-- Meat Thermometer Recipes
(12, 'Perfect Medium-Rare Steak', 'Steak, salt, pepper, butter, herbs', 
'1. Season steak generously with salt and pepper\n2. Cook in hot skillet or grill\n3. Use meat thermometer to check for internal temperature of 130-135°F for medium-rare\n4. Rest for 5-10 minutes before slicing', 
'20 minutes', 'Medium'),

(12, 'Safe Roast Chicken', 'Whole chicken, salt, pepper, herbs, lemon, garlic', 
'1. Season chicken inside and out\n2. Stuff cavity with lemon and garlic\n3. Roast at 425°F until meat thermometer inserted in thickest part of thigh reads 165°F\n4. Rest for 15 minutes before carving', 
'1 hour 30 minutes', 'Medium'),

-- Cast Iron Skillet Recipes
(13, 'Perfect Seared Steak', 'Steak, salt, pepper, garlic, butter, herbs', 
'1. Preheat cast iron skillet until very hot\n2. Season steak generously\n3. Add to pan and sear 3-4 minutes per side\n4. Add butter, garlic, and herbs\n5. Baste steak with butter\n6. Rest before slicing', 
'20 minutes', 'Medium'),

(13, 'Skillet Cornbread', 'Cornmeal, flour, sugar, baking powder, salt, milk, eggs, butter', 
'1. Preheat oven to 425°F with cast iron skillet inside\n2. Mix dry ingredients in one bowl, wet in another\n3. Add melted butter to wet ingredients\n4. Combine wet and dry mixtures\n5. Pour into hot skillet\n6. Bake 20-25 minutes until golden', 
'35 minutes', 'Easy'),

-- Non-stick Pan Recipes
(14, 'Perfect Omelette', 'Eggs, milk or water, salt, pepper, fillings of choice, butter', 
'1. Beat eggs with milk, salt, and pepper\n2. Heat non-stick pan over medium heat and add butter\n3. Pour in egg mixture\n4. As edges set, pull toward center and tilt pan\n5. Add fillings when mostly set\n6. Fold over and serve', 
'10 minutes', 'Medium'),

(14, 'No-Stick Crepes', 'Flour, eggs, milk, salt, butter', 
'1. Blend all ingredients until smooth\n2. Rest batter 30 minutes\n3. Heat non-stick pan over medium heat\n4. Add small amount of butter\n5. Pour in thin layer of batter, swirling to coat pan\n6. Cook until edges lift, then flip\n7. Cook briefly on second side', 
'45 minutes', 'Medium'),

-- Dutch Oven Recipes
(15, 'No-Knead Dutch Oven Bread', 'Flour, water, salt, yeast', 
'1. Mix ingredients to form shaggy dough\n2. Cover and let rise 12-18 hours\n3. Shape into ball and let rest\n4. Preheat Dutch oven in 450°F oven\n5. Place dough in hot Dutch oven\n6. Bake covered 30 minutes, then uncovered 15 minutes', 
'14 hours', 'Easy'),

(15, 'Dutch Oven Braised Short Ribs', 'Beef short ribs, vegetables, red wine, beef broth, herbs, tomato paste', 
'1. Brown short ribs in Dutch oven\n2. Remove and sauté vegetables\n3. Add tomato paste and deglaze with wine\n4. Return ribs to pot with broth and herbs\n5. Cover and braise in 325°F oven for 2.5-3 hours until tender', 
'3.5 hours', 'Medium'),

-- Additional recipes for other tools can be added similarly

-- Insert troubleshooting tips
INSERT INTO troubleshooting (tool_id, problem, solution) VALUES
-- Chef's Knife
(1, 'Knife is dull', 'Use a knife sharpener or honing steel to restore the edge. For very dull knives, consider professional sharpening.'),
(1, 'Knife handle feels loose', 'For wooden handles, it may have dried out. Some knives can be tightened by carefully turning the pommel. For severe cases, consult a professional knife repair service.'),
(1, 'Food sticks to knife while cutting', 'The blade may be dull or the food too sticky. Sharpen the knife and try wetting the blade slightly before cutting sticky foods.'),

-- Mandoline Slicer
(2, 'Mandoline blade is dull', 'Many mandolines have replaceable blades. Check the manufacturer's website for replacement parts.'),
(2, 'Food sticks to mandoline', 'Make sure the blade is clean and sharp. Some foods cut better when chilled. Use the guard and apply even pressure.'),
(2, 'Inconsistent slice thickness', 'Ensure the thickness adjustment is securely locked. Apply steady, even pressure. Some foods with varying density may slice unevenly.'),

-- Kitchen Shears
(3, 'Shears are difficult to open and close', 'Clean the pivot area thoroughly. Apply a drop of food-safe oil to the pivot. Work the shears open and closed to distribute.'),
(3, 'Blades no longer meet properly', 'The shears may have loosened at the pivot. If adjustable, tighten the screw. If not, replacement may be necessary.'),
(3, 'Rust spots on blades', 'Clean with a paste of baking soda and water. Scrub gently, rinse, and dry thoroughly. Apply a thin layer of food-safe oil.'),

-- Immersion Blender
(4, 'Blender is stuck or jammed', 'Unplug the blender. Check for food caught in the blades. Clean thoroughly before trying again.'),
(4, 'Blender leaks from bottom', 'The gasket or seal may be worn or damaged. Check if it needs to be replaced or properly re-seated.'),
(4, 'Motor runs but blades don't turn', 'There may be an issue with the connection between the motor and blades. Check for stripped gears or broken parts. Contact manufacturer for replacement parts.'),

-- Food Processor
(5, 'Food processor doesn't start', 'Check if all components are properly aligned and locked in place. Most food processors have safety mechanisms that prevent operation if not assembled correctly.'),
(5, 'Uneven chopping in food processor', 'Don't overload the bowl. Process in smaller batches for more consistent results.'),
(5, 'Lid is difficult to lock in place', 'Check for food residue on the locking mechanism. Clean thoroughly. Ensure bowl is properly seated on the base before attempting to lock the lid.'),

-- Electric Mixer
(6, 'Mixer makes unusual noise', 'Check that attachments are properly secured. Ensure you're not exceeding the machine's capacity. If noise persists, there may be a mechanical issue requiring service.'),
(6, 'Mixer stops during use', 'Many mixers have thermal protection that shuts off the motor if it overheats. Allow to cool for 30 minutes before resuming. Reduce batch size if this happens frequently.'),
(6, 'Ingredients aren't mixing evenly', 'Start at lower speeds, especially with dry ingredients. Scrape the sides of the bowl frequently. Ensure the bowl and beater are correct for your mixer model.'),

-- Air Fryer
(7, 'Food not crispy in air fryer', 'Make sure not to overcrowd the basket. Try cooking at a higher temperature or for a longer time. Pat food dry before cooking.'),
(7, 'Air fryer produces smoke', 'There may be excess oil or food residue in the basket. Clean thoroughly between uses. Reduce the amount of oil used.'),
(7, 'Uneven cooking results', 'Shake or turn food halfway through cooking. Don't overcrowd the basket. Cut food into uniform sizes for even cooking.'),

-- Pressure Cooker
(8, 'Pressure cooker won't seal', 'Check the sealing ring for damage or food residue. Ensure the valve is in the correct position. Verify that there is enough liquid in the pot.'),
(8, 'Food burns in pressure cooker', 'There may not be enough liquid. Always ensure you have the minimum required amount. Some models have a tendency to overheat on the bottom - try using a trivet.'),
(8, 'Steam leaks from around the lid', 'The sealing ring may be improperly installed or damaged. Remove, clean, and reposition. Replace if cracked or stretched.'),

-- Slow Cooker
(9, 'Food cooks too quickly in slow cooker', 'Your slow cooker may run hot. Use a thermometer to check if it's reaching proper temperature. Next time, reduce cooking time or use the LOW setting.'),
(9, 'Condensation makes food watery', 'Avoid removing the lid during cooking as this causes condensation. If recipe is naturally releasing a lot of liquid, prop lid slightly open for the last 30 minutes to allow some evaporation.'),
(9, 'Uneven cooking in slow cooker', 'Cut ingredients to uniform size. Arrange root vegetables on the bottom as they take longer to cook. Ensure the cooker isn't overfilled.'),

-- Digital Scale
(10, 'Scale gives inconsistent readings', 'Place on a flat, stable surface. Check for low battery. Calibrate if your model allows it.'),
(10, 'Scale turns off during use', 'Most digital scales have an auto-off feature to save battery. Look for a setting to extend this time or press a button periodically to keep it active.'),
(10, 'Scale won\'t zero properly', 'Remove all items and clean the surface. Check if anything is stuck under or around the weighing platform. Replace batteries if low.'),

-- Measuring Cups and Spoons
(11, 'Measurements seem inaccurate', 'Ensure you're using the correct cup for the ingredient type (liquid vs. dry). Level dry ingredients properly. Check that your cups haven't warped if plastic.'),
(11, 'Set is missing pieces', 'Consider buying an individual replacement or a new set with pieces that nest together or are connected to prevent loss.'),
(11, 'Plastic measuring cups are stained', 'Soak in a solution of water and baking soda or diluted bleach. Rinse thoroughly. For persistent stains, especially from tomato or turmeric, exposure to sunlight can help bleach naturally.'),

-- Meat Thermometer
(12, 'Thermometer reads incorrectly', 'Check for battery issues. Some thermometers need calibration - follow manufacturer instructions. Ensure the probe is inserted correctly.'),
(12, 'Digital display is faint or blank', 'Replace batteries. If that doesn't work, check for water damage or contact the manufacturer if under warranty.'),
(12, 'Thermometer responds slowly', 'Some thermometers naturally take longer to reach final temperature. For faster readings, look for "instant-read" models with thinner probes.'),

-- Cast Iron Skillet
(13, 'Food sticks to cast iron', 'The pan may not be properly seasoned. Clean thoroughly and re-season by coating with oil and baking in oven at 350°F for an hour.'),
(13, 'Cast iron has rust spots', 'Scrub with steel wool to remove rust. Wash, dry thoroughly, and re-season by coating with oil and baking in oven at 350°F for an hour.'),
(13, 'Cast iron smokes when heating', 'The pan may have excess oil from previous seasoning or cooking. Wipe out excess oil before heating. Use oil with a high smoke point.'),

-- Non-stick Pan
(14, 'Non-stick coating is peeling', 'Stop using the pan immediately as flakes could contaminate food. It's time to replace the pan - non-stick coatings aren't designed to last forever.'),
(14, 'Food still sticks to non-stick pan', 'The coating may be damaged or worn out. Always use oil or butter even with non-stick. Preheat the pan properly before adding food.'),
(14, 'Pan warps when heated', 'Avoid sudden temperature changes. Don't run cold water on a hot pan. Look for heavier-gauge pans that resist warping.'),

-- Dutch Oven
(15, 'Dutch oven enamel is chipped', 'Small chips are generally safe to continue using. Cover exposed cast iron with oil to prevent rusting. For large chips, consider replacing if food safety is a concern.'),
(15, 'Food burns in Dutch oven', 'Cast iron retains heat well - lower cooking temperature than with other pots. Use a flame diffuser for gas stoves. Don't preheat empty for too long.'),
(15, 'Lid doesn\'t fit properly', 'Check rim for food residue or chips that prevent proper seating. Some warping can occur with extreme temperature changes - avoid these when possible.'),

-- Pastry Blender
(16, 'Wires bend out of shape', 'Gently bend back into proper alignment. Avoid using on frozen butter or very hard ingredients.'),
(16, 'Butter clumps inside the wires', 'Chill the pastry blender before use. Stop occasionally to clean out accumulated butter. Use a knife to remove stuck particles.'),
(16, 'Handle feels loose', 'Tighten any visible screws. For welded handles, a small amount of food-safe epoxy can help reinforce the connection.'),

-- Rolling Pin
(17, 'Wooden rolling pin cracks', 'Wood can dry out over time. Treat regularly with food-grade mineral oil. Avoid soaking in water or dishwasher cleaning.'),
(17, 'Dough sticks to rolling pin', 'Dust both the pin and dough with flour. For very sticky dough, chill before rolling. Consider using a silicone or non-stick rolling pin.'),
(17, 'Rolling pin handles spin independently of roller', 'This is likely a bearing issue in roller-style pins. Clean thoroughly and apply food-grade lubricant to the axle. If it persists, replacement may be necessary.'),

-- Silicone Baking Mat
(18, 'Mat retains odors', 'Bake on its own at 250°F for 20 minutes, then wash with baking soda paste. Air dry completely.'),
(18, 'Mat discolors', 'Some discoloration is normal and doesn't affect performance. For oil stains, try a paste of baking soda and water. Avoid using with very greasy foods or high heat.'),
(18, 'Mat slides on baking sheet', 'Ensure both the mat and baking sheet are completely dry and free of oil. Some baking sheets have more texture than others for better grip.'),

-- Box Grater
(19, 'Grating surface becomes dull', 'Box graters generally can't be sharpened. When significantly dull, replacement is usually necessary.'),
(19, 'Food gets stuck in holes', 'Tap the grater firmly on the counter. Use a small brush to dislodge stubborn particles. Always rinse immediately after use before food dries.'),
(19, 'Grater rusts', 'Ensure the grater is completely dry before storage. Don't leave wet in the sink. Look for stainless steel models that resist rusting.'),

-- Colander
(20, 'Small pasta falls through holes', 'Match your colander hole size to what you're straining. For very small pasta, consider a fine-mesh strainer instead.'),
(20, 'Colander slides in sink during draining', 'Look for models with rubber feet or edges. Place a dish towel under the colander to prevent sliding. Some colanders have hooks to hang on pot edges.'),
(20, 'Plastic colander warps from heat', 'Allow boiling water to cool slightly before straining. Look for heat-resistant plastic or switch to stainless steel or silicone.'),

-- Salad Spinner
(21, 'Spinning mechanism breaks', 'Most have plastic gears that can strip with excessive force. Use gentle, consistent pressure. Some models have replaceable mechanisms.'),
(21, 'Water doesn\'t drain properly', 'Check that drain holes aren't blocked. Ensure basket is properly aligned in the bowl. Some models need to be disassembled for thorough cleaning.'),
(21, 'Lid doesn\'t stay secure during spinning', 'Check for warping or damage to the locking mechanism. Clean any food residue that might prevent proper closure. Use less force when spinning.'),

-- Garlic Press
(22, 'Garlic squeezes out sides instead of through holes', 'Don't overload the chamber. Ensure the garlic clove isn't too large. Clean holes thoroughly between uses to prevent blockage.'),
(22, 'Press requires too much force', 'Choose garlic with large, fresh cloves. Older garlic can become tough and fibrous. Some presses work better with peeled garlic.'),
(22, 'Hinge becomes loose or stiff', 'Clean thoroughly, paying special attention to the hinge area. Apply a small amount of food-safe oil to the hinge if stiff.'),

-- Vegetable Peeler
(23, 'Peeler blade becomes dull', 'Most peelers can't be sharpened. Replace when dull - continuing to use a dull peeler requires more pressure and increases accident risk.'),
(23, 'Peeler clogs with vegetable skin', 'Rinse frequently during use. For sticky residue from vegetables like sweet potatoes, wipe clean with a paper towel before continuing.'),
(23, 'Handle feels slippery', 'Dry hands and handle thoroughly before use. Look for models with rubberized or textured handles for better grip.'),

-- Can Opener
(24, 'Can opener doesn\'t cut properly', 'The cutting wheel may be dull or dirty. Clean thoroughly and try again. If it continues to fail, replacement is usually necessary.'),
(24, 'Leaves sharp edges on can', 'Traditional can openers cut from the top, leaving sharp edges. Consider a safety can opener that cuts from the side for smooth edges.'),
(24, 'Electric can opener stops during operation', 'May be overheated or encountering a dent in the can. Let rest for a few minutes, then try again. Rotate the can slightly to find a better starting point.'),

-- Food Storage Containers
(25, 'Containers retain food odors', 'Soak in a solution of baking soda and water. For persistent odors, try a paste of baking soda left to sit overnight, or diluted vinegar solution.'),
(25, 'Plastic containers stain', 'Avoid storing tomato-based foods in plastic. For existing stains, try sunlight exposure or a paste of baking soda and water. Use glass containers for foods likely to stain.'),
(25, 'Lids don\'t seal properly', 'Check for warping from heat (microwaving/dishwasher). Ensure rim is clean and free of food particles. Replace severely warped containers.'),

-- Kitchen Drawer Organizers
(26, 'Organizer slides when drawer opens', 'Use non-slip drawer liner underneath. Some organizers come with adhesive tabs or can be secured with removable double-sided tape.'),
(26, 'Doesn\'t fit drawer dimensions', 'Measure carefully before purchasing. Look for adjustable organizers that can be customized to fit different drawer sizes.'),
(26, 'Dirt accumulates in compartments', 'Remove everything periodically for cleaning. Use a vacuum with small attachment or compressed air to clean corners and crevices.'),

-- Spice Rack
(27, 'Spices lose flavor quickly', 'Location may be too warm or exposed to light. Move to a cooler, darker location. Consider containers that block light for sensitive spices.'),
(27, 'Difficult to identify spices', 'Label tops of containers for visibility from above. Arrange alphabetically or by frequency of use. Consider clear containers or a tiered rack for better visibility.'),
(27, 'Wall-mounted rack pulls away from wall', 'May be overloaded. Ensure mounting into wall studs or use appropriate anchors for the weight. Distribute heavy containers evenly.'),

-- Oven Mitts
(28, 'Heat transfers through mitts', 'Mitts may be worn thin or of poor quality. Look for mitts rated for higher temperatures or with multiple layers. Silicone-covered mitts often offer better heat protection.'),
(28, 'Mitts have burn holes', 'Replace immediately as protection is compromised. Avoid contact with direct flames or heating elements. Look for flame-resistant materials.'),
(28, 'Mitts retain food odors', 'Machine wash according to care instructions. For persistent odors, add vinegar to the wash. Replace if odors cannot be removed.'),

-- Cut-Resistant Gloves
(29, 'Gloves limit dexterity', 'Look for properly sized gloves - too large will reduce dexterity. Higher quality gloves maintain protection while allowing better finger movement.'),
(29, 'Gloves retain food odors', 'Wash thoroughly after each use. Some materials absorb odors more than others - look for non-porous coatings on the working surface.'),
(29, 'Gloves deteriorate over time', 'Inspect regularly for tears or worn areas. Replace immediately if integrity is compromised. Store flat in a dry place away from sharp objects.'),

-- Kitchen Fire Extinguisher
(30, 'Pressure gauge shows recharge needed', 'Have professionally recharged or replace with new extinguisher. Never attempt to use an under-pressurized extinguisher.'),
(30, 'Uncertain if extinguisher works', 'Check pressure gauge monthly - needle should be in the green zone. Most require professional inspection annually and replacement or service every 5-12 years.'),
(30, 'Not sure when to use different extinguisher types', 'Kitchen fires are often Class K (cooking oil/fat) or Class B (flammable liquids). Ensure your extinguisher is rated for these. Never use water on grease fires.');