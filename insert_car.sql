INSERT INTO customer (
	customer_id,
  	car_id,
  	first_name,
  	last_name,
  	address,
  	billing,
  	email,
 	phone
) VALUES(
	1,
  	1,
  	'Michael',
  	'Jordan',
  	'23 The Goat Cir',
  	'23 The Goat Cir',
  	'thegoat@jumpman23.com',
 	'(232)232-3232'
);

INSERT INTO customer (
	customer_id,
  	car_id,
  	first_name,
  	last_name,
  	address,
  	billing,
  	email,
 	phone
) VALUES(
	2,
  	2,
  	'Kobe',
  	'Bryant',
  	'24 8th street',
  	'24 8th street',
  	'blackmamba@mambamentallity.com',
 	'(248)102-4810'
);

INSERT INTO car_inventory (
 	car_id,
  	make,
  	model,
  	year,
  	mileage,
  	tuneup,
  	purchase_car,
  	service_car,
  	customer_id,
  	car_price
) VALUES (
	1,
	'Chevrolet',
	'Blazer',
	'2021',
	'23500',
	'7/25/2021',
	TRUE,
	TRUE,
	1,
	32000.00
);

INSERT INTO car_inventory (
 	car_id,
  	make,
  	model,
  	year,
  	mileage,
  	tuneup,
  	purchase_car,
  	service_car,
  	customer_id,
  	car_price
) VALUES (
	2,
	'Ford',
	'Mustang Cobra',
	'2021',
	'24800',
	'7/25/2021',
	TRUE,
	TRUE,
	2,
	24000.00
);

INSERT INTO staff (
  	staff_id,
  	first_name,
  	last_name,
  	staff_type
) VALUES(
	1,
	'Phil',
	'Jackson',
	'Sales'
);

INSERT INTO staff (
  	staff_id,
  	first_name,
  	last_name,
  	staff_type
) VALUES(
	2,
	'Tex',
	'Winters',
	'Mechanic'
);

INSERT INTO parts (
  	part_id,
  	part_name,
  	part_price
) VALUES (
	1,
	'Oil Filter',
	15.00
);

INSERT INTO parts (
  	part_id,
  	part_name,
  	part_price
) VALUES (
	2,
	'Gas Casket',
	35.00
);

INSERT INTO parts (
  	part_id,
  	part_name,
  	part_price
) VALUES (
	3,
	'Brakes',
	65.00
);

INSERT INTO parts (
  	part_id,
  	part_name,
  	part_price
) VALUES (
	4,
	'Roters',
	55.00
);