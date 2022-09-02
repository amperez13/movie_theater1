create table film(
	film_id SERIAL primary key,
	file_title VARCHAR(50),
	run_time NUMERIC(4)
);

create table show_schedule(
	show_id SERIAL primary key,
	show_time numeric(4),
	theater_number NUMERIC(4)
);

create table rewards(
	rewards_id SERIAL primary key,
	rewards_level VARCHAR(20),
	rewards_points NUMERIC(10)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	phone_number NUMERIC(20),
	payment_info NUMERIC(50),
	billing_address VARCHAR(50),
	rewards_id INTEGER,
	foreign key(rewards_id) references rewards(rewards_id)
);

create table concession(
	con_order_id SERIAL primary key,
	item_name VARCHAR(25),
	item_cost NUMERIC(10),
	con_rewards NUMERIC(10),
	rewards_id INTEGER,
	foreign key(rewards_id) references rewards(rewards_id)
);

create table ticket(
	ticket_order_id SERIAL primary key,
	ticket_type VARCHAR(30),
	ticket_cost NUMERIC(10),
	ticket_rewards NUMERIC(10),
	customer_id INTEGER not null,
	rewards_id INTEGER,
	film_id INTEGER not null,
	show_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(rewards_id) references rewards(rewards_id),
	foreign key(film_id) references film(film_id),
	foreign key(show_id) references show_schedule(show_id)
	);
	
alter table show_schedule
add film_id INTEGER;

alter table show_schedule
add foreign key (film_id) references film(film_id);

alter table customer 
add column contact_number VARCHAR(20);

alter table customer 
drop column phone_number;

alter table customer
drop column payment_info;

alter table customer
add column payment_info VARCHAR(50);