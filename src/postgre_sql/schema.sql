--Postgre related sql
CREATE TABLE vehicleclass (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
description VARCHAR(255),
dailyprice numeric(6,2), -- 6 is total count digits of the number, 2 is the count of digit for the fractional part
image bytea
);