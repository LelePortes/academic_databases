create table products(
	products_id int identity(1,1) not null,
	name varchar(255) not null,
	supplier_id int not null,
	price decimal(19,2) not null,
	quantity int not null,
	type varchar(150) not null,
	primary key(products_id)
);