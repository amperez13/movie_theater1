
--insert data into the film database

insert into film(
	film_id,
	file_title,
	run_time
)VALUES(
	1,
	'The Princess Bride',
	98
);

insert into film(
	film_id,
	file_title,
	run_time
)VALUES(
	2,
	'Knives Out',
	130
);

insert into film(
	film_id,
	file_title,
	run_time
)VALUES(
	3,
	'Rogue One',
	133
);

--insert data into the show schedule database

insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	1,
	1230,
	1,
	1
);

insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	2,
	1300,
	2,
	2
);
insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	3,
	1330,
	3,
	3
);
insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	4,
	1430,
	1,
	1
);

insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	5,
	1540,
	2,
	2
);
insert into show_schedule(
	show_id,
	show_time,
	theater_number,
	film_id
)VALUES(
	6,
	1600,
	3,
	3
);

--insert data into the rewards database

insert into rewards(
	rewards_id,
	rewards_level,
	rewards_points
)VALUES(
	1,
	'Gold',
	300
);
insert into rewards(
	rewards_id,
	rewards_level,
	rewards_points
)VALUES(
	2,
	'Platinum',
	500
);
insert into rewards(
	rewards_id,
	rewards_level,
	rewards_points
)VALUES(
	3,
	'Silver',
	200
);

--insert data into the customer database

insert into customer(
	customer_id,
	first_name,
	last_name,
	contact_number,
	payment_info,
	billing_address,
	rewards_id
)VALUES(
	1,
	'Anna',
	'Perez',
	'720-299-7034',
	'4444 1257 4477 0428 801 31404',
	'1404 E 51st Street, Savannah, GA 31404',
	1	
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	contact_number,
	payment_info,
	billing_address,
	rewards_id
)VALUES(
	2,
	'Sundae',
	'School Eh',
	'567-454-7668',
	'4444 1257 4477 0912 8012 31404',
	'113 Country Walk Dr, Savannah, GA 31404',
	2	
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	contact_number,
	payment_info,
	billing_address,
	rewards_id
)VALUES(
	3,
	'Tyler',
	'Hancock',
	'567-454-7668',
	'4444 1257 4477 0912 0218 31404',
	'1921 E 37th Street, Savannah, GA 31404',
	3	
);

--Insert Information into concession database

insert into concession(
	con_order_id,
	item_name,
	item_cost,
	con_rewards,
	rewards_id
)VALUES(
	1,
	'Popcorn',
	6,
	3,
	1
);
insert into concession(
	con_order_id,
	item_name,
	item_cost,
	con_rewards,
	rewards_id
)VALUES(
	2,
	'Large Soda',
	5,
	3,
	3
);

insert into ticket(
	ticket_order_id,
	ticket_type,
	ticket_cost,
	ticket_rewards,
	customer_id,
	rewards_id,
	film_id,
	show_id
)VALUES(
	1,
	'Adult - Matinee',
	4,
	2,
	1,
	1,
	3,
	3
);

insert into ticket(
	ticket_order_id,
	ticket_type,
	ticket_cost,
	ticket_rewards,
	customer_id,
	rewards_id,
	film_id,
	show_id
)VALUES(
	2,
	'Adult - Matinee',
	4,
	2,
	2,
	2,
	3,
	3
);

insert into ticket(
	ticket_order_id,
	ticket_type,
	ticket_cost,
	ticket_rewards,
	customer_id,
	rewards_id,
	film_id,
	show_id
)VALUES(
	3,
	'Adult - Matinee',
	4,
	2,
	3,
	3,
	3,
	3
);
