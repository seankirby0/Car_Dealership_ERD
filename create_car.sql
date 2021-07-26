CREATE TABLE customer (
	"customer_id" SERIAL PRIMARY KEY,
  	"car_id" INTEGER,
  	"first_name" VARCHAR(50),
  	"last_name" VARCHAR(50),
  	"address" VARCHAR(200),
  	"billing" VARCHAR(200),
  	"email" VARCHAR(100),
 	"phone" VARCHAR(20)
--   	KEY `Primary Key` (`customer_id`),
--   	KEY `Foreign key` (`car_id`)
);

SELECT *
FROM customer

CREATE TABLE car_service_ticket (
 	"service_ticket_id" SERIAL PRIMARY KEY,
 	"customer_id" INTEGER,
  	"car_id" INTEGER,
  	"staff_id" INTEGER,
  	"part_id" INTEGER,
  	"service_id" INTEGER,
  	"completed" BOOLEAN
--   	KEY `Primary Key` (`service_ticket_id`),
--   	KEY `Foreign key` (`customer_id`, `car_id`, `staff_id`, `part_id`, `service_id`)
);

CREATE TABLE mechanic_services (
 	"service_id" SERIAL PRIMARY KEY,
  	"service_price" NUMERIC(8,2),
  	"staff_id" INTEGER,
  	"part_id" INTEGER,
  	"service_name" VARCHAR(100),
  	FOREIGN KEY (service_id) REFERENCES car_service_ticket (service_ticket_id)
--   KEY `Foriegn Key` (`staff_id`, `part_id`)
);

CREATE TABLE car_inventory (
 	"car_id" SERIAL PRIMARY KEY,
  	"make" VARCHAR(20),
  	"model" VARCHAR(30),
  	"year" VARCHAR(4),
  	"mileage" INTEGER,
  	"tuneup" DATE,
  	"purchase_car" BOOLEAN,
  	"service_car" BOOLEAN,
  	"customer_id" INTEGER,
  	"car_price" NUMERIC(8,2),
  	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE parts (
  	"part_id" SERIAL PRIMARY KEY,
  	"part_name" VARCHAR(50),
  	"car_id" INTEGER,
  	"part_price" NUMERIC(8,2),
  	"service_ticket_id" INTEGER,
  	FOREIGN KEY (car_id) REFERENCES car_inventory(car_id), 
	FOREIGN KEY (service_ticket_id) REFERENCES car_service_ticket(service_ticket_id)
);

CREATE TABLE staff (
  	"staff_id" SERIAL PRIMARY KEY,
  	"first_name" VARCHAR(50),
  	"last_name" VARCHAR(50),
  	"staff_type" VARCHAR(10)
);

CREATE TABLE invoice (
  	"invoice_id" SERIAL PRIMARY KEY,
  	"service_ticket_id" INTEGER,
  	"customer_id" INTEGER,
  	"car_id" INTEGER,
  	"car_price" NUMERIC(8,2),
  	"service_price" NUMERIC(8,2),
  	"part_price" NUMERIC(8,2),
  	"invoice_total" NUMERIC(11,2),
  	"invoice_paid" BOOLEAN,
  	"service_id" INTEGER,
  	"staff_id" INTEGER,
  	FOREIGN KEY (service_ticket_id) REFERENCES car_service_ticket(service_ticket_id),
	FOREIGN KEY (car_id) REFERENCES car_inventory(car_id),
-- 	FOREIGN KEY (car_price) REFERENCES car_inventory(car_price),
-- 	FOREIGN KEY (service_price) REFERENCES mechanic_services(service_price),
-- 	FOREIGN KEY (part_price) REFERENCES parts(part_price),
-- 	FOREIGN KEY (service_id) REFERENCES car_service_ticket(service_id),
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE service_history (
  	"service_history_id" SERIAL PRIMARY KEY,
  	"invoice_id" INTEGER,
  	"customer_id" INTEGER,
  	"car_id" INTEGER,
--   KEY `Forgein` (`invoice_id`),
  	FOREIGN KEY (customer_id) REFERENCES customer(customer_id), 
	FOREIGN KEY (car_id) REFERENCES car_inventory(car_id)
);