create database chocolate;
use chocolate;
CREATE TABLE chocolate (
    id INT,           
    name VARCHAR(100),            
    brand VARCHAR(100),           
    type VARCHAR(50),             
    price DECIMAL(10, 2),         
    expiry_date DATE             
);

INSERT INTO chocolate (id, name, brand, type, price, expiry_date) VALUES
(1, 'Classic Milk', 'ChocoDelight', 'Milk', 2.99, '2024-12-31'),
(2, 'Dark Intense', 'ChocoDelight', 'Dark', 3.49, '2025-01-15'),
(3, 'White Dream', 'SweetBite', 'White', 2.79, '2024-11-30'),
(4, 'Caramel Crunch', 'ChocoDelight', 'Milk', 3.29, '2024-10-05'),
(5, 'Hazelnut Heaven', 'NuttyChoc', 'Milk', 3.99, '2024-09-20'),
(6, 'Minty Fresh', 'CoolChoc', 'Dark', 3.19, '2025-02-28'),
(7, 'Berry Bliss', 'FruitChoc', 'White', 2.89, '2024-08-15'),
(8, 'Almond Delight', 'NuttyChoc', 'Dark', 4.29, '2025-03-31'),
(9, 'Orange Zest', 'CitrusChoc', 'Dark', 3.69, '2024-07-15'),
(10, 'Strawberry Swirl', 'FruitChoc', 'White', 2.99, '2024-06-30'),
(11, 'Coffee Crunch', 'BitterSweet', 'Dark', 4.49, '2025-05-05'),
(12, 'Peanut Butter', 'NuttyChoc', 'Milk', 3.49, '2024-08-10'),
(13, 'Raspberry Ripple', 'FruitChoc', 'Dark', 3.79, '2024-10-25'),
(14, 'Toffee Delight', 'SweetBite', 'Milk', 2.69, '2024-12-10'),
(15, 'Coconut Paradise', 'IslandChoc', 'White', 3.09, '2024-09-01'),
(16, 'Chili Spice', 'HotChoc', 'Dark', 3.99, '2024-11-15'),
(17, 'Cookie Crunch', 'CookieChoc', 'Milk', 3.29, '2024-07-05'),
(18, 'Lemon Twist', 'CitrusChoc', 'White', 2.99, '2024-10-30'),
(19, 'Pistachio Pizzazz', 'NuttyChoc', 'Dark', 4.19, '2025-04-20'),
(20, 'Matcha Magic', 'GreenChoc', 'White', 4.49, '2024-12-01');

