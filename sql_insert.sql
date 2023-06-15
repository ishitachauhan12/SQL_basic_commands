-- inserting single entries

INSERT INTO customers
VALUES (
	DEFAULT,
    'John',
    'Smith',
    '1990-01-01',
    NULL,
    'address',
    'city',
    'CA',
    200
    );
    
INSERT INTO customers(
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
VALUES (
    'John',
    'Smith',
    '1990-01-01',
    'address',
    'city',
    'CA'
    );
    
-- insering multiple entries

INSERT INTO shippers (name)
VALUES ('shipper1'),
	   ('shipper2'),
       ('shipper3');