create schema ecommerce collate utf8mb4_general_ci;

create table payment_details
(
	id int auto_increment
		primary key,
	amount decimal null,
	provider varchar(60) null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp()
);

create table product_catagory
(
	id int auto_increment
		primary key,
	name varchar(60) null,
	`desc` text null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	deleted_at timestamp default current_timestamp() not null on update current_timestamp()
);

create table product_inventory
(
	id int auto_increment
		primary key,
	quantity int null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	deleted_at timestamp default current_timestamp() not null
);

create table supplier
(
	id int auto_increment
		primary key,
	name varchar(60) null,
);

create table product
(
	id int auto_increment
		primary key,
	name varchar(60) null,
	`desc` text null,
	category_id int null,
	inventory_id int null,
	price decimal null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	deleted_at timestamp default current_timestamp() not null,
	supplier_id int null,
	constraint product_ibfk_1
		foreign key (inventory_id) references product_inventory (id),
	constraint product_ibfk_2
		foreign key (category_id) references product_catagory (id),
	constraint product_ibfk_3
		foreign key (supplier_id) references supplier (id)
);

create index category_id
	on product (category_id);

create index inventory_id
	on product (inventory_id);

create index supplier_id
	on product (supplier_id);

create table supplier_address
(
	id int auto_increment
		primary key,
	supplier_id int null,
	address_line1 varchar(60) null,
	address_line2 varchar(60) null,
	city varchar(60) null,
	postal_code varchar(60) null,
	country varchar(60) null,
	telephone varchar(60) null,
	mobile varchar(60) null,
	constraint supplier_address_ibfk_1
		foreign key (supplier_id) references supplier (id)
);

create index supplier_id
	on supplier_address (supplier_id);

create table supplier_payment
(
	id int auto_increment
		primary key,
	supplier_id int null,
	payment_type varchar(60) null,
	account_no int null,
	constraint supplier_payment_ibfk_1
		foreign key (supplier_id) references supplier (id)
);

create index supplier_id
	on supplier_payment (supplier_id);

create table user
(
	id int auto_increment
		primary key,
	username varchar(60) null,
	password text null,
	first_name decimal null,
	last_name varchar(60) null,
	telephone int null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp()
);

create table order_details
(
	id int auto_increment
		primary key,
	user_id int null,
	total decimal null,
	payment_id int null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	constraint order_details_ibfk_1
		foreign key (user_id) references user (id),
	constraint order_details_ibfk_2
		foreign key (payment_id) references payment_details (id)
);

create index payment_id
	on order_details (payment_id);

create index user_id
	on order_details (user_id);

create table order_items
(
	id int auto_increment
		primary key,
	order_id int null,
	product_id int null,
	quantity int null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	constraint order_items_ibfk_1
		foreign key (order_id) references order_details (id),
	constraint order_items_ibfk_2
		foreign key (product_id) references product (id)
);

create index order_id
	on order_items (order_id);

create index product_id
	on order_items (product_id);

create table review
(
	id int auto_increment
		primary key,
	product_id int null,
	user_id int null,
	`desc` text null,
	rating decimal null,
	constraint review_ibfk_1
		foreign key (product_id) references product (id),
	constraint review_ibfk_2
		foreign key (user_id) references user (id)
);

create index product_id
	on review (product_id);

create index user_id
	on review (user_id);

create table shopping_session
(
	id int auto_increment
		primary key,
	user_id int null,
	total decimal null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	constraint shopping_session_ibfk_1
		foreign key (user_id) references user (id)
);

create table cart_item
(
	id int auto_increment
		primary key,
	session_id int null,
	product_id int null,
	quantity int null,
	created_at timestamp default current_timestamp() not null on update current_timestamp(),
	modified_at timestamp default current_timestamp() not null on update current_timestamp(),
	constraint cart_item_ibfk_1
		foreign key (product_id) references product (id),
	constraint cart_item_ibfk_2
		foreign key (session_id) references shopping_session (id)
);

create index product_id
	on cart_item (product_id);

create index session_id
	on cart_item (session_id);

create index user_id
	on shopping_session (user_id);

create table user_address
(
	id int auto_increment
		primary key,
	user_id int null,
	address_line1 varchar(60) null,
	address_line2 varchar(60) null,
	city varchar(60) null,
	postal_code varchar(60) null,
	country varchar(60) null,
	telephone varchar(60) null,
	mobile varchar(60) null,
	constraint user_address_ibfk_1
		foreign key (user_id) references user (id)
);

create index user_id
	on user_address (user_id);

create table user_payment
(
	id int auto_increment
		primary key,
	user_id int null,
	payment_type varchar(60) null,
	account_no int null,
	constraint user_payment_ibfk_1
		foreign key (user_id) references user (id)
);

create index user_id
	on user_payment (user_id);



