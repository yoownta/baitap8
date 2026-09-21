CREATE DATABASE baitap8;
GO

USE baitap8;
GO

CREATE TABLE Users (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    fullname NVARCHAR(255),
    email NVARCHAR(255) UNIQUE,
    password NVARCHAR(255),
    phone NVARCHAR(50)
);
GO

CREATE TABLE Category (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255),
    images NVARCHAR(500)
);
GO

CREATE TABLE Product (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255),
    quantity INT,
    [desc] NVARCHAR(MAX),
    images NVARCHAR(500),
    price FLOAT,
    category_id BIGINT,
    userid BIGINT,
    FOREIGN KEY (category_id) REFERENCES Category(id),
    FOREIGN KEY (userid) REFERENCES Users(id)
);
GO

CREATE TABLE User_Category (
    user_id BIGINT,
    category_id BIGINT,
    PRIMARY KEY (user_id, category_id),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);
GO

INSERT INTO Users (fullname, email, password, phone) VALUES 
('Nguyen Van A', 'a@gmail.com', '123456', '0123456789'),
('Tran Thi B', 'b@gmail.com', '123456', '0987654321');

INSERT INTO Category (name, images) VALUES 
('Laptop', 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853'),
('Mobile', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9'),
('Tablet', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0'),
('Accessories', 'https://images.unsplash.com/photo-1583394838336-acd977736f90');

INSERT INTO User_Category (user_id, category_id) VALUES 
(1, 1),
(2, 2);
GO

INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Oppo Find X7 Plus', 81, 'Premium Oppo Find X7 Plus with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 1906.38, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 2', 70, 'Premium AirPods Pro Edition 2 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2367.48, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Max', 8, 'Premium Samsung Galaxy S24 Max with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 2184.69, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 12 inch', 31, 'Premium Galaxy Tab S9 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 996.53, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('OnePlus 12 Ultra', 55, 'Premium OnePlus 12 Ultra with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 2132.46, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Google Pixel 8 Plus', 37, 'Premium Google Pixel 8 Plus with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 2526.15, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Surface Pro 9 11 inch', 58, 'Premium Surface Pro 9 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 160.62, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Pro', 6, 'Premium Samsung Galaxy S24 Pro with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 273.82, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('OnePlus 12 Plus', 55, 'Premium OnePlus 12 Plus with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1477.72, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Oppo Find X7 Ultra', 28, 'Premium Oppo Find X7 Ultra with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 2035.29, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 Ultra', 81, 'Premium iPhone 15 Ultra with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 788.76, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Razer Blade Gen 10', 38, 'Premium Razer Blade Gen 10 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 2392.16, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 11 inch', 41, 'Premium Galaxy Tab S9 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2975.07, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 14', 7, 'Premium Sony WH-1000XM5 Edition 14 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2387.64, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 15', 28, 'Premium Sony WH-1000XM5 Edition 15 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 2557.75, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Acer Predator Gen 10', 19, 'Premium Acer Predator Gen 10 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 1108.26, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Razer Blade Gen 11', 56, 'Premium Razer Blade Gen 11 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 246.05, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Dell XPS Gen 11', 96, 'Premium Dell XPS Gen 11 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 2546.57, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 9', 80, 'Premium MacBook Pro Gen 9 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 877.67, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 Ultra', 82, 'Premium iPhone 15 Ultra with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 172.03, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPad Pro 12 inch', 92, 'Premium iPad Pro 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1039.09, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 12 inch', 75, 'Premium Galaxy Tab S9 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 924.15, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 23', 10, 'Premium Sony WH-1000XM5 Edition 23 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 1372.3, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Plus', 41, 'Premium Samsung Galaxy S24 Plus with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1178.62, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 11 inch', 89, 'Premium Lenovo Tab P12 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1416.98, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Xiaomi 14 Pro', 39, 'Premium Xiaomi 14 Pro with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 2993.55, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Dell XPS Gen 12', 33, 'Premium Dell XPS Gen 12 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 639.67, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Keychron K2 Edition 28', 63, 'Premium Keychron K2 Edition 28 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 702.29, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('OnePlus 12 ', 69, 'Premium OnePlus 12  with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 2788.79, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 11 inch', 30, 'Premium Lenovo Tab P12 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 502.71, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 Max', 66, 'Premium iPhone 15 Max with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 749.02, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Surface Pro 9 10 inch', 69, 'Premium Surface Pro 9 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2719.45, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 33', 27, 'Premium Logitech MX Master Edition 33 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1961.88, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 10', 93, 'Premium MacBook Pro Gen 10 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 410.76, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 11', 43, 'Premium MacBook Pro Gen 11 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 2634.85, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Keychron K2 Edition 36', 54, 'Premium Keychron K2 Edition 36 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 563.52, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo ThinkPad Gen 10', 13, 'Premium Lenovo ThinkPad Gen 10 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 1052.83, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Dell XPS Gen 11', 57, 'Premium Dell XPS Gen 11 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 1276.71, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 10', 73, 'Premium MacBook Pro Gen 10 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 1644.69, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 11 inch', 82, 'Premium Lenovo Tab P12 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2729.89, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Oppo Find X7 Ultra', 34, 'Premium Oppo Find X7 Ultra with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1908.96, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 42', 99, 'Premium Logitech MX Master Edition 42 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 498.25, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 12 inch', 53, 'Premium Lenovo Tab P12 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2027.9, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 44', 88, 'Premium Sony WH-1000XM5 Edition 44 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 744.25, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Anker PowerBank Edition 45', 69, 'Premium Anker PowerBank Edition 45 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1715.18, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 46', 14, 'Premium Logitech MX Master Edition 46 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1327.9, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 47', 37, 'Premium Logitech MX Master Edition 47 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2154.27, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 48', 70, 'Premium Logitech MX Master Edition 48 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2756.96, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 9', 78, 'Premium MacBook Pro Gen 9 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 2179.34, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 12 inch', 63, 'Premium Galaxy Tab S9 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2863.44, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Acer Predator Gen 10', 47, 'Premium Acer Predator Gen 10 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 1676.01, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 Pro', 10, 'Premium iPhone 15 Pro with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 2677.61, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Xiaomi 14 Plus', 7, 'Premium Xiaomi 14 Plus with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1962.15, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 10 inch', 65, 'Premium Galaxy Tab S9 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2165.17, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('MacBook Pro Gen 14', 30, 'Premium MacBook Pro Gen 14 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 770.48, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 11 inch', 96, 'Premium Lenovo Tab P12 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2973.0, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Acer Predator Gen 11', 79, 'Premium Acer Predator Gen 11 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 1572.9, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Anker PowerBank Edition 58', 76, 'Premium Anker PowerBank Edition 58 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 366.98, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Surface Pro 9 10 inch', 32, 'Premium Surface Pro 9 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1663.64, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo ThinkPad Gen 10', 66, 'Premium Lenovo ThinkPad Gen 10 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 1001.91, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('HP Spectre Gen 10', 62, 'Premium HP Spectre Gen 10 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 622.01, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 62', 16, 'Premium Sony WH-1000XM5 Edition 62 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1382.45, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Anker PowerBank Edition 63', 69, 'Premium Anker PowerBank Edition 63 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1019.44, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Google Pixel 8 Pro', 88, 'Premium Google Pixel 8 Pro with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 395.28, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Surface Pro 9 10 inch', 42, 'Premium Surface Pro 9 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 2942.73, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('OnePlus 12 Pro', 62, 'Premium OnePlus 12 Pro with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 1898.74, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 ', 43, 'Premium iPhone 15  with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 2936.16, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Pro', 6, 'Premium Samsung Galaxy S24 Pro with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1702.74, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 11 inch', 98, 'Premium Galaxy Tab S9 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1613.6, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Anker PowerBank Edition 70', 15, 'Premium Anker PowerBank Edition 70 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 416.5, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Keychron K2 Edition 71', 58, 'Premium Keychron K2 Edition 71 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2873.2, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 72', 22, 'Premium Logitech MX Master Edition 72 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 538.25, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Asus ROG Gen 11', 90, 'Premium Asus ROG Gen 11 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 2687.68, 1, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 ', 61, 'Premium Samsung Galaxy S24  with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 516.09, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 75', 79, 'Premium Logitech MX Master Edition 75 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 2397.04, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Galaxy Tab S9 11 inch', 92, 'Premium Galaxy Tab S9 11 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 385.76, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Plus', 97, 'Premium Samsung Galaxy S24 Plus with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 1544.4, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 78', 74, 'Premium AirPods Pro Edition 78 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 2561.36, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 ', 62, 'Premium iPhone 15  with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 365.73, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Google Pixel 8 Max', 30, 'Premium Google Pixel 8 Max with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1419.43, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('OnePlus 12 Plus', 56, 'Premium OnePlus 12 Plus with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1109.96, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 82', 14, 'Premium Sony WH-1000XM5 Edition 82 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 2974.29, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo ThinkPad Gen 14', 43, 'Premium Lenovo ThinkPad Gen 14 with great features.', 'https://images.unsplash.com/photo-1531297172864-459c7ac941eb', 2130.22, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 84', 92, 'Premium AirPods Pro Edition 84 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 84.94, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Logitech MX Master Edition 85', 81, 'Premium Logitech MX Master Edition 85 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 2695.98, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 86', 89, 'Premium AirPods Pro Edition 86 with great features.', 'https://images.unsplash.com/photo-1572569433602-66d4c6d1f9cc', 234.32, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Dell XPS Gen 12', 29, 'Premium Dell XPS Gen 12 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 387.45, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 88', 61, 'Premium Sony WH-1000XM5 Edition 88 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 2416.54, 4, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 10 inch', 18, 'Premium Lenovo Tab P12 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1303.83, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Max', 26, 'Premium Samsung Galaxy S24 Max with great features.', 'https://images.unsplash.com/photo-1592899677974-c466c4f1de16', 1038.21, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 91', 95, 'Premium AirPods Pro Edition 91 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1975.24, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Xiaomi 14 Pro', 60, 'Premium Xiaomi 14 Pro with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 1828.3, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Sony WH-1000XM5 Edition 93', 60, 'Premium Sony WH-1000XM5 Edition 93 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 1142.76, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Samsung Galaxy S24 Max', 60, 'Premium Samsung Galaxy S24 Max with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 474.03, 2, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo Tab P12 10 inch', 36, 'Premium Lenovo Tab P12 10 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 82.58, 3, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('AirPods Pro Edition 96', 82, 'Premium AirPods Pro Edition 96 with great features.', 'https://images.unsplash.com/photo-1583394838336-acd977736f90', 482.04, 4, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Surface Pro 9 12 inch', 82, 'Premium Surface Pro 9 12 inch with great features.', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0', 1073.04, 3, 1);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Lenovo ThinkPad Gen 14', 6, 'Premium Lenovo ThinkPad Gen 14 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 1612.44, 1, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('iPhone 15 Max', 44, 'Premium iPhone 15 Max with great features.', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9', 1763.23, 2, 2);
INSERT INTO Product (title, quantity, [desc], images, price, category_id, userid) VALUES ('Razer Blade Gen 14', 74, 'Premium Razer Blade Gen 14 with great features.', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', 2669.49, 1, 1);
GO
