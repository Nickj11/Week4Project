INSERT INTO car (
    car_make,
    car_model,
    car_year
) VALUES (
    'Rolls-Royce',
    'Ghost',
    2022
), (
    'Telsa',
    'Cybertruck',
    2024
);
SELECT *
FROM car;

INSERT INTO mechanic (
    first_name,
    last_name
) VALUES(
    'Richard',
    'Johnson'
), (
    'Kayden',
    'Aleixs'
);

SELECT *
FROM mechanic;

INSERT INTO customer(
    first_name,
    last_name,
    car_id
) VALUES (
    'Mary',
    'Jane',
    1
),(
    'LeBron',
    'James',
    2

);

SELECT *
FROM customer;

INSERT INTO saleperson (
    first_name,
    last_name,
    customer_id
) VALUES (
    'Henry',
    'Ford',
    1
),(
    'Elon',
    'Musk',
    2
);
SELECT *
FROM saleperson;


INSERT INTO service_ticket (
    car_id,
    service_discription
) VALUES (
    1,
    'Transmission is slipping, replace the transmission'
),(
    2,
    'Oil Change, 8 quart of synthenic oil'
);

SELECT *
fROM service_ticket;

INSERT INTO invoice (
    saleperson_id,
    car_id,
    customer_id,
    price
) VALUES (
    1,
    1,
    1,
    350.000
),(
    2,
    2,
    2,
    140.000
);
SELECT *
FROM invoice;


INSERT INTO service_history (
    car_id,
    service_ticket,
    service_discription
) VALUES (
    1,
    1,
    'Slipped Transmission'
),(
    2,
    2,
    'Oil Changw'
);

INSERT INTO service_mechanic(
    mechanic_id,
    service_ticket
) VALUES (
    1,
    1
),(
    2,
    2
);
SELECT *
FROM service_mechanic;