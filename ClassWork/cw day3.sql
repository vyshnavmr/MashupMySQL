INSERT INTO products(Name, Category, Price, InStock)
VALUES('Torch','Electronic','149','YES'),('HotWheels','Toy','799','NO'),('Mixer Grinder','Electronic','1500','YES'),
('Running Shoe','Sports','899','YES'),('Yoga Mat','Sports','1299','NO');

-- Qn 1
SELECT DISTINCT(Category) FROM products 

-- Qn 2
SELECT * FROM products WHERE InStock='yes' OR Price < 500

-- Qn 3
SELECT * FROM products WHERE InStock<>'yes' OR Price > 1000;

-- Qn 4
SELECT * FROM products ORDER BY (Price);

-- Qn 5
SELECT name, Price, Price * 1.18 AS price_with_tax FROM products
