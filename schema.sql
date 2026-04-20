create schema IMS;
USE IMS;
create table supplier(
supplier_id int,
supplier_name varchar(100),
email varchar(100),
contact bigint
);
create table product(
product_id int,
quantity int,
product_name varchar(100),
supp_id int
);
create table shipment(
shipment_id int,
shipment_status varchar(50),
sup_id int
);
create table orders(
order_id int,
order_status varchar(50),
prod_id int,
cust_id int
);
create table customer(
customer_id int,
contact bigint,
location varchar(100),
customer_name varchar(100),
ord_id int
);
alter table supplier modify supplier_id int not null primary key;
alter table product modify product_id int not null primary key;
alter table shipment modify shipment_id int not null primary key;
alter table orders modify order_id int not null primary key;
alter table customer modify customer_id int primary key;
alter table shipment add foreign key(sup_id) references supplier(supplier_id);
alter table product add foreign key(supp_id) references supplier(supplier_id);
alter table orders add foreign key(prod_id) references product(product_id);
alter table orders add foreign key(cust_id) references customer(customer_id);