create table material_types (
	id serial primary key,
	type_name varchar(40),
	percent_of_losses decimal(5, 2)
);

create table materials (
	id serial primary key,
	material_name varchar(40),
	type_name varchar(40),
	type_id int references material_types(id), --
	unit_price decimal(10, 2),
	stock_quantity decimal(10, 3),
	min_quantity decimal(10, 3),
	package_quantity decimal(10, 3),
	measurement_unit varchar(10)
);

create table suppliers (
	id serial primary key,
	supplier_name varchar(40),
	supplier_type varchar(40),
	inn varchar(40),
	rating int,
	work_start_date timestamp
);

create table material_suppliers (
	id serial primary key,
	material_name varchar(40),
	material_id int references materials(id), --
	supplier_name varchar(40),
	supplier_id int references suppliers(id), --
	cost_price decimal(10, 2),
	avg_supply_days int
);

create table product_types (
	id serial primary key,
	type_name varchar(40),
	coefficient decimal(5, 2)
);

create table products (
	id serial primary key,
	article varchar(40),
	type_name varchar(40),
	type_id int references product_types(id), --
	product_name varchar(40),
	min_price_for_partner decimal(10, 2)
);

create table material_products (
	id serial primary key,
	material_name varchar(40),
	material_id int references materials(id), --
	product_name varchar(40),
	product_id int references products(id), --
	material_count decimal(6, 4)
);

create table production_plans (
	id serial primary key,
	period varchar(20),
	product_name varchar(40),
	product_id int references products(id), --
	planing_quantity int
);

create table roles (
	id serial primary key,
	role_name varchar(40),
	description text
);

create table users (
	id serial primary key,
	login varchar(40),
	full_name varchar(60),
	role_name varchar(40),
	role_id int references roles(id), --
	status varchar(20)
);

--

select * from material_types;
select * from materials;
select * from product_types;
select * from products;
select * from suppliers;
select * from material_products;
select * from material_suppliers;
select * from production_plans;
select * from roles;
select * from users;

--materials
update materials m
set type_id = t.id
from material_types t
where m.type_name = t.type_name;

select * from materials;

alter table materials
drop column type_name;

--products
update products p
set type_id = t.id
from product_types t
where p.type_name = t.type_name;

select * from products;

alter table products
drop column type_name;

--material_suppliers(material_id)
update material_suppliers ms
set material_id = m.id
from materials m
where ms.material_name = m.material_name;

select * from material_suppliers;

alter table material_suppliers
drop column material_name;

--material_suppliers(supplier_id)
update material_suppliers ms
set supplier_id = s.id
from suppliers s
where ms.supplier_name = s.supplier_name;

select * from material_suppliers;

alter table material_suppliers
drop column supplier_name;

--material_products(material_id)
update material_products mp
set material_id = m.id
from materials m
where mp.material_name = m.material_name;

select * from material_products;

alter table material_products
drop column material_name;

--material_products(product_id)
update material_products mp
set product_id = p.id
from products p
where mp.product_name = p.product_name;

select * from material_products;

alter table material_products
drop column product_name;

--production_plans
update production_plans pp
set product_id = p.id
from products p
where pp.product_name = p.product_name;

select * from production_plans;

alter table production_plans
drop column product_name;

--users
update users u
set role_id = r.id
from roles r
where u.role_name = r.role_name;

select * from users;

alter table users
drop column role_name;