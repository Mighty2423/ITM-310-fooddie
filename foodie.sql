CREATE DATABASE Restaurant;


USE Restaurant;
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
('Fresco Kitchen & Grill', '117 S Center St', '83440', '(208) 359-5900', 'American', 4.5, '$$');

SELECT * FROM restaurants WHERE city = 'Rexburg' AND state = 'ID';
