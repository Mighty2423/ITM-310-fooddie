CREATE DATABASE Restaurant;


USE restaurant;
CREATE TABLE restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) DEFAULT 'Rexburg',
    state VARCHAR(50) DEFAULT 'ID',
    zip_code VARCHAR(10),
    phone VARCHAR(20),
    cuisine VARCHAR(100),
    rating DECIMAL(3,1),
    price_range VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO restaurants (name, address, zip_code, phone, cuisine, rating, price_range)
VALUES 
('The Hickory', '155 W Main St', '83440', '(208) 356-9696', 'BBQ', 4.5, '$$'),
('Righteous Slice', '175 W 200 S', '83440', '(208) 497-3919', 'Pizza', 4.7, '$'),
('Da Pineapple Grill', '383 S 2nd W', '83440', '(208) 356-4200', 'Hawaiian', 4.6, '$$'),
('Original Thai', '36 Carlson Ave', '83440', '(208) 359-9387', 'Thai', 4.4, '$$'),
('Fresco Kitchen & Grill', '117 S Center St', '83440', '(208) 359-5900', 'American', 4.5, '$$'),
('SPARKS', '150 W Main St', '83440', '(208) 499-0421', 'BBQ' , 4.7, '$$'),
('Big Juds Country Diner', '411 W 7800 S', '83440', '(208) 359-2833', 'American, Diner', 4.5, '$'),
('The Hickory', '485 North 2nd East', '83440', '(208) 359-2328', 'American, Barbecue', 4.0, '$$'),
('Taqueria El Rancho', '330 W 4th S', '83440', '(208) 356-0600', 'Mexican, Latin', 4.5, '$'),
('Righteous Slice', '175 W 200 S', '83440', '(208) 497-3919', 'Pizza', 4.7, '$'),
('Da Pineapple Grill', '383 S 2nd W', '83440', '(208) 356-4200', 'Hawaiian, Sushi', 4.5, '$$'),
('Original Thai Restaurant', '36 Carlson Ave', '83440', '(208) 359-9387', 'Thai', 4.5, '$$'),
('Fresco Kitchen & Grill', '117 S Center St', '83440', '(208) 359-5900', 'Italian, American', 4.2, '$$'),
('Blister''s BBQ', '5752 S Yellowstone Hwy', '83440', '(208) 356-3965', 'Barbecue', 4.5, '$$'),
('Casa De Ochoa', '485 N 2nd E', '83440', '(208) 356-0708', 'Mexican', 4.0, '$'),
('Pizza Pie Cafe', '163 W Main St', '83440', '(208) 359-3355', 'Pizza, Buffet', 4.3, '$'),
('Millhollow Frozen Yogurt', '48 S 1st E', '83440', '(208) 356-9766', 'Sandwiches, Frozen Yogurt', 4.5, '$'),
('Red Rabbit Grill', '155 W Main St', '83440', '(208) 356-9344', 'American', 4.0, '$$'),
('Banzai Ramen', '24 W 1st S', '83440', '(208) 359-2234', 'Japanese, Ramen', 4.5, '$$'),
('Taqueria El Rancho #2', '545 N 2nd E', '83440', '(208) 356-0600', 'Mexican', 4.5, '$'),
('The Pit Barbecue Co.', '15 College Ave', '83440', '(208) 356-5700', 'Barbecue', 4.0, '$$'),
('Cupbop', '160 W 2nd S', '83440', '(208) 359-2222', 'Korean', 4.5, '$'),
('Five Guys', '124 W Main St', '83440', '(208) 359-2222', 'Burgers, Fast Food', 4.0, '$$'),
('Thai and Teriyaki', '175 W 2nd S', '83440', '(208) 356-6775', 'Thai, Japanese', 4.5, '$$'),
('Adam\''s Mongolian Grill & Asian Cuisine', '619 N 2nd E', '83440', '(208) 356-9696', 'Mongolian, Asian', 4.0, '$$'),
('The Cocoa Bean', '20 College Ave', '83440', '(208) 359-2259', 'Desserts, Coffee', 4.5, '$');

SELECT * FROM restaurants WHERE city = 'Rexburg' AND state = 'ID';

SELECT * FROM restaurants WHERE rating > 4.5;

SELECT * FROM restaurants WHERE price_range = '$$';

SELECT * FROM restaurants WHERE cuisine = 'Pizza';

SELECT * FROM restaurants WHERE cuisine = 'BBQ' AND price_range = '$$';

SELECT * FROM restaurants WHERE cuisine = 'Hawaiian' AND rating > 4.5;

SELECT * FROM restaurants WHERE cuisine = 'American' AND price_range = '$$';

SELECT * FROM restaurants WHERE cuisine = 'Thai' AND rating > 4.5;


