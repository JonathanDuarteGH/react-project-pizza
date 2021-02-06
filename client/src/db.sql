CREATE TABLE pys (
    pizza_id SERIAL NOT NULL,
    _name VARCHAR (50) UNIQUE NOT NULL,
    _category VARCHAR (50) NOT NULL,
    _price INT NOT NULL
);

ALTER TABLE pys
ADD COLUMN _rating INT NOT NULL;

ALTER TABLE pys
ADD COLUMN _description VARCHAR (50) NOT NULL;

ALTER TABLE pys 
ALTER COLUMN _description VARCHAR (300);

ALTER TABLE pys ALTER COLUMN _price TYPE NUMERIC; -- you must also mannually update column value

UPDATE pys SET _price = '11.99' WHERE pizza_id = 1;

ALTER TABLE pys ALTER COLUMN _rating TYPE NUMERIC;

INSERT INTO pys (_name, _category, _price, _rating, _description) VALUES ('cheese pizza', 'vegan', 11.99, 4.5, 'Tomato sauce, mozzarella cheese, parmesan cheese, basil'), ('pepperoni', 'meat', 13.99, 4, 'Sliced pepperoni, parmesan cheese, mozzarella cheese, sauce'), ('bbq chicken pizza', 'meat', 14.99, 5, 'BBQ sauce, chicken, mozzarella, cheese, tomatoes, red onion'), ('prosciutto pizza', 'vegan', 13.99, 4.5, 'Tomato sauce, mozzarella, Prosciutto, lemon, olive oil'), ('firehouse pizza', 'meat', 12.99, 4.5, 'Spicy sausage, pepperoni, red onion, tomatoes, basil'), ('ultimate meat pizza', 'meat', 17.99, 4, 'Sausage, seasoned ground beef, pepperoni, ham, salami, bacone'), ('garden veggie pizza', 'vegan', 15.99, 5, 'Mushrooms, onions, green peppers, black olives, tomatoes'), ('chicken pizza', 'meat', 15.99, 4, 'Buffalo sauce, mozzarella, red onion, chicken, ranch sauce');

ALTER TABLE pys ADD PRIMARY KEY (pizza_id);

DROP TABLE pys;

CREATE TABLE pys (
    pizza_id SERIAL NOT NULL PRIMARY KEY,
    _name VARCHAR (50) UNIQUE NOT NULL,
    _category VARCHAR (50) NOT NULL,
    _price NUMERIC NOT NULL
);

ALTER TABLE pys
ADD COLUMN _rating NUMERIC NOT NULL,
ADD COLUMN _description VARCHAR (300) NOT NULL;

CREATE TABLE appetizers_sides (
    apps_id SERIAL NOT NULL PRIMARY KEY,
    _name VARCHAR (50) UNIQUE NOT NULL,
    _price NUMERIC NOT NULL,
    _description VARCHAR (300) NOT NULL
);

INSERT INTO appetizers_sides (_name, _price, _description) VALUES ('sticky grilled chicken', 11.99, 'Balsamic vinegar, honey glazed, soy sauce, minced garlic'), ('mozzarella sticks', 7.99, 'Mozzarella cheese, marinara sauce, seasoned bread crumbs'), ('grilled buffalo wings', 8.99, 'Kosher salt, black pepper, hot sauce, honey galzed'), ('onion rings', 4.99, 'Sea salt, seasoned bread crumbs, all-purpose flour, deep fried onions'), ('potato wedges', 6.99, 'Russet potatoes, sea salt, black pepper, chopped parsley'), ('grilled potatoes', 6.99, 'Russet potatoes, rosemary, kosher salt, nutmeg'), ('sticky ribs', 12.99, '3 pound baby back ribs, chili powder, paprika, honey glazed'), ('chili cheese dog', 6.99, 'Hot dog, hot dog bun, ground beef, Worcestershire sauce, kosher salt, shredded cheese'), ('breakfast burrito', 5.99, 'Flour Tortillas, parsley, tomatoes, kosher salt, ground beef, avocado, lemon, monterey cheese'), ('white truffle salt fries', 5.99, 'Russet potatoes, kosher salt, parmesan cheese chopped chives');

DELETE FROM appetizers_sides WHERE apps_id IN (11, 12, 13, 14, 15, 16, 17, 18); 

DELETE FROM appetizers_sides WHERE apps_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

CREATE TABLE pasta_salads (
    pass_id SERIAL NOT NULL PRIMARY KEY,
    _name VARCHAR (50) UNIQUE NOT NULL,
    _price NUMERIC NOT NULL,
    _description VARCHAR (300) NOT NULL
);

INSERT INTO pasta_salads (_name, _price, _description) VALUES ('shrimp & tonnarelli pasta', 21.99, 'Serrano ham, spinach, roasted red peppers, tomato, pil pil sauce'), ('spaghetti bolognese', 8.99, 'Pork sausages, parmesan cheese, onion, tomatoes, cream, basil'), ('spaghetti alla puttanesca', 9.99, 'Garlic, black olives, cherry tomatoes, red chillies, spaghetti, olive oil, anchovy fillets'), ('chicken salad', 6.99, 'Chicken breast, pepper, cilantro, mint, red onion, oil, garlic chili sauce, soy sauce, sugar, ginger root'), ('spicy seafood salad', 9.99, 'Crab sticks, shrimps, scallions, mayonnaise, tobiko, lemon, hot chili sauce, salt'), ('green salad', 5.99, 'Romaine lettuce, cucumber, tomatoes, red onion, olive oil, red wine vinegar, pepper'), ('nice little side salad', 7.99, 'Spinach, Tuscan Romaine, red onion, roasted corn, cherry tomatoes, heirloom carrots, BL Lemon-Basil Vinaigrette'), ('spicy spinach salad', 6.99, 'Veggie patties, baby spinach, red pepper, cilantro, mint, red onion, gingerroot, soy sauce, oil, chili sauce');

CREATE TABLE drinks_sweets (
    drinksweets_id SERIAL NOT NULL PRIMARY KEY,
    _name VARCHAR (50) UNIQUE NOT NULL,
    _price NUMERIC NOT NULL,
    _description VARCHAR (300) NOT NULL
);

INSERT INTO drinks_sweets (_name, _price, _description) VALUES ('blueberry smoothie', 2.99, 'Frozen blueberries, greek yogurt, reduced-fat milk, white sugar, vanilla extract ground nutmeg'), ('Ice lime cola', 1.99, 'Coca Cola, lime, crushed ice'), ('soda bottles', 5.99, 'Standard soda beverages'), ('black coffee', 2.99, 'Central American ground coffee beans, sugar, cream, milk'), ('cheesecake', 3.99, 'Graham cracker crumbs, sugar, salt, unsalted butter, cream cheese, vanilla extract, sour cream, heavy whipping cream, fresh raspberries'), ('chocolate cake', 4.99, 'Unsweetened cocoa powder, almond milk, whipping cream, eggs, vanilla extract'), ('belgian waffle', 7.99, 'Signature waffle flour, sugar, cinnamon, eggs, milk, vailla extract'), ('strawberry ice cream', 3.99, 'Mashed starberries, heavy cream, sugar, vanilla extract, crushed ice');