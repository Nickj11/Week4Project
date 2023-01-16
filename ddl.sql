-- CREATE CAR TABLE
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR(45),
    car_model VARCHAR(45),
    car_year VARCHAR(45)
);

-- CREATE MECHANIC TABLE
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

-- CREATE CUSTOMER TABLE
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car (car_id)
);

-- CREATE SALEPERSON TABLE
CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

-- CREATE SERVICE TABLE
CREATE TABLE service_ticket(
    service_ticket SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    service_discription VARCHAR (200),
    FOREIGN KEY (car_id) REFERENCES car (car_id)
);
-- CREATE INVOICE TABLE
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    price NUMERIC (10,3),
    FOREIGN KEY (car_id) REFERENCES car (car_id),
    FOREIGN KEY (saleperson_id) REFERENCES saleperson (saleperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

-- CREATE SERVICE_HISTORY
CREATE TABLE service_history(
    serivice_history_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    service_ticket INTEGER NOT NULL,
    service_discription VARCHAR (200),
    FOREIGN KEY (car_id) REFERENCES car (car_id),
    FOREIGN KEY (service_ticket) REFERENCES service_ticket (service_ticket)
);

-- CREATE SERVICE_MECHANIC TABLE
CREATE TABLE service_mechanic (
    service_mechanic_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER NOT NULL,
    service_ticket INTEGER NOT NULL,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic (mechanic_id),
    FOREIGN KEY (service_ticket) REFERENCES service_ticket (service_ticket)

);