-- This file demonstrates role-based access control (RBAC)
-- Admin role: full access
-- User role: limited CRUD operations on IMS database

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'your_secure_password';
CREATE USER 'user1'@'%' IDENTIFIED BY 'your_secure_password';
CREATE USER 'user2'@'%' IDENTIFIED BY 'your_secure_password';
CREATE ROLE 'admin_role';
GRANT ALL PRIVILEGES ON *.* TO 'admin_role' WITH GRANT OPTION;
CREATE ROLE 'user_role';
GRANT SELECT, INSERT, UPDATE, DELETE ON IMS.* TO 'user_role';
GRANT 'admin_role' TO 'admin'@'localhost';
SET DEFAULT ROLE ALL TO 'admin'@'localhost';
GRANT 'user_role' TO 'user1'@'%';
SET DEFAULT ROLE ALL TO 'user1'@'%';
GRANT 'user_role' TO 'user2'@'%';
SET DEFAULT ROLE ALL TO 'user2'@'%';
FLUSH PRIVILEGES;