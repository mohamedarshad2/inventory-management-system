INSERT INTO supplier (supplier_id, supplier_name, email, contact) VALUES
(1, 'ABC Suppliers', 'abc@example.com', 1234567890),
(2, 'XYZ Corp', 'xyz@example.com', 9876543210),
(3, 'Global Traders', 'global@example.com', 1122334455),
(4, 'Tech Supplies Inc', 'tech@example.com', 9988776655),
(5, 'Office Essentials Ltd', 'office@example.com', 1122334456),
(6, 'Quality Products Co', 'quality@example.com', 9876543211),
(7, 'Best Deals Supply', 'bestdeals@example.com', 1234567891),
(8, 'Premium Suppliers', 'premium@example.com', 9988776656),
(9, 'Reliable Traders', 'reliable@example.com', 1122334457),
(10, 'Fast Delivery Co', 'fastdelivery@example.com', 9876543212),
(11, 'Innovative Solutions', 'innovative@example.com', 1234567892),
(12, 'Complete Supply Ltd', 'complete@example.com', 9988776657),
(13, 'Value Suppliers', 'value@example.com', 1122334458),
(14, 'Top Notch Traders', 'topnotch@example.com', 9876543213),
(15, 'Efficient Supply Co', 'efficient@example.com', 1234567893),
(16, 'Superior Products Inc', 'superior@example.com', 9988776658),
(17, 'Prime Supply Group', 'prime@example.com', 1122334459),
(18, 'Leading Traders Ltd', 'leading@example.com', 9876543214),
(19, 'Optimum Supply Co', 'optimum@example.com', 1234567894),
(20, 'Ultimate Suppliers', 'ultimate@example.com', 9988776659),
(21, 'Elite Supply Solutions', 'elite@example.com', 1122334460);

INSERT INTO product (product_id, quantity, product_name) VALUES
(101, 100, 'Laptop'),
(102, 150, 'Mouse'),
(103, 200, 'Keyboard'),
(104, 50, 'Monitor'),
(105, 75, 'Webcam'),
(106, 120, 'Printer'),
(107, 90, 'Scanner'),
(108, 60, 'Projector'),
(109, 80, 'Speakers'),
(110, 110, 'Headphones'),
(111, 130, 'USB Drive'),
(112, 105, 'External HDD'),
(113, 70, 'SSD'),
(114, 55, 'RAM'),
(115, 95, 'Graphics Card'),
(116, 125, 'Motherboard'),
(117, 85, 'CPU'),
(118, 65, 'Power Supply'),
(119, 100, 'Case'),
(120, 140, 'Cooling Fan'),
(121, 115, 'Optical Drive'),
(122, 75, 'Network Card');

INSERT INTO shipment (shipment_id, shipment_status) VALUES
(201, 'Shipped'),
(202, 'Delivered'),
(203, 'Processing'),
(204, 'Out for Delivery'),
(205, 'Delayed'),
(206, 'Cancelled'),
(207, 'Returned'),
(208, 'In Transit'),
(209, 'Ready for Pickup'),
(210, 'Awaiting Confirmation'),
(211, 'Packed'),
(212, 'Loading'),
(213, 'Customs Clearance'),
(214, 'Held at Location'),
(215, 'Rescheduled'),
(216, 'Damaged'),
(217, 'Lost'),
(218, 'Partially Shipped'),
(219, 'Urgent Delivery'),
(220, 'Normal Delivery'),
(221, 'Fragile Goods'),
(222, 'Temperature Controlled');

INSERT INTO orders (order_id, order_status) VALUES
(301, 'Placed'),
(302, 'Shipped'),
(303, 'Delivered'),
(304, 'Cancelled'),
(305, 'Pending Payment'),
(306, 'Payment Received'),
(307, 'Processing'),
(308, 'Ready for Shipment'),
(309, 'On Hold'),
(310, 'Completed'),
(311, 'Refund Requested'),
(312, 'Refunded'),
(313, 'Partially Shipped'),
(314, 'Backordered'),
(315, 'Awaiting Stock'),
(316, 'Quoted'),
(317, 'Approved'),
(318, 'Rejected'),
(319, 'Dispatched'),
(320, 'Out for Delivery'),
(321, 'Failed Delivery'),
(322, 'Awaiting Pickup');

INSERT INTO customer (customer_id, contact, location, customer_name) VALUES
(401, 5551234, 'New York', 'Alice Smith'),
(402, 5552345, 'Los Angeles', 'Bob Johnson'),
(403, 5553456, 'Chicago', 'Charlie Brown'),
(404, 5554567, 'Houston', 'Diana Miller'),
(405, 5555678, 'Phoenix', 'Ethan Davis'),
(406, 5556789, 'Philadelphia', 'Fiona Wilson'),
(407, 5557890, 'San Antonio', 'George Garcia'),
(408, 5558901, 'San Diego', 'Hannah Rodriguez'),
(409, 5559012, 'Dallas', 'Isaac Williams'),
(410, 5550123, 'San Jose', 'Julia Brown'),
(411, 5551235, 'Austin', 'Kevin Davis'),
(412, 5552346, 'Seattle', 'Linda Miller'),
(413, 5553457, 'Baltimore', 'Michael Wilson'),
(414, 5554568, 'Boston', 'Nancy Garcia'),
(415, 5555679, 'Washington', 'Oliver Rodriguez'),
(416, 5556790, 'Detroit', 'Patricia Williams'),
(417, 5557901, 'Nashville', 'Quincy Brown'),
(418, 5558012, 'Denver', 'Rachel Davis'),
(419, 5559123, 'Portland', 'Samuel Miller'),
(420, 5550234, 'Oklahoma City', 'Tina Wilson'),
(421, 5551345, 'Las Vegas', 'Victor Garcia'),
(422, 5552456, 'Atlanta', 'Wendy Rodriguez');

UPDATE shipment SET sup_id = 1 WHERE shipment_id IN (201, 205, 209, 213, 217);
UPDATE shipment SET sup_id = 2 WHERE shipment_id IN (202, 206, 210, 214, 218);
UPDATE shipment SET sup_id = 3 WHERE shipment_id IN (203, 207, 211, 215, 219);
UPDATE shipment SET sup_id = 4 WHERE shipment_id IN (204, 208, 212, 216, 220);
UPDATE shipment SET sup_id = 5 WHERE shipment_id IN (221,222);


UPDATE product SET supp_id = 1 WHERE product_id IN (101, 106, 111, 116, 121);
UPDATE product SET supp_id = 2 WHERE product_id IN (102, 107, 112, 117, 122);
UPDATE product SET supp_id = 3 WHERE product_id IN (103, 108, 113, 118);
UPDATE product SET supp_id = 4 WHERE product_id IN (104, 109, 114, 119);
UPDATE product SET supp_id = 5 WHERE product_id IN (105, 110, 115, 120);


UPDATE orders SET prod_id = 101 WHERE order_id IN (301, 305, 309, 313, 317);
UPDATE orders SET prod_id = 102 WHERE order_id IN (302, 306, 310, 314, 318);
UPDATE orders SET prod_id = 103 WHERE order_id IN (303, 307, 311, 315, 319);
UPDATE orders SET prod_id = 104 WHERE order_id IN (304, 308, 312, 316, 320);
UPDATE orders SET prod_id = 105 WHERE order_id IN (321, 322);


UPDATE orders SET cust_id = 401 WHERE order_id IN (301, 305, 309, 313, 317);
UPDATE orders SET cust_id = 402 WHERE order_id IN (302, 306, 310, 314, 318);
UPDATE orders SET cust_id = 403 WHERE order_id IN (303, 307, 311, 315, 319);
UPDATE orders SET cust_id = 404 WHERE order_id IN (304, 308, 312, 316, 320);
UPDATE orders SET cust_id = 405 WHERE order_id IN (321, 322);


UPDATE customer SET ord_id = 301 WHERE customer_id IN (401, 406, 411, 416, 421);
UPDATE customer SET ord_id = 302 WHERE customer_id IN (402, 407, 412, 417, 422);
UPDATE customer SET ord_id = 303 WHERE customer_id IN (403, 408, 413, 418);
UPDATE customer SET ord_id = 304 WHERE customer_id IN (404, 409, 414, 419);
UPDATE customer SET ord_id = 305 WHERE customer_id IN (405, 410, 415, 420);