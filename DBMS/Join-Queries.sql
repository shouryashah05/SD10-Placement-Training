use MITADT;

CREATE TABLE customer (
    custid INT,
    cname  VARCHAR(30)
);

CREATE TABLE vehicle (
    vid   INT,
    vname VARCHAR(30)
);

CREATE TABLE salesmen (
    sid   INT,
    sname VARCHAR(30)
);

CREATE TABLE transaction (
    tid       INT,
    custid    INT,
    vid       INT,
    sid       INT,
    buy_price FLOAT(9,2)
);

INSERT INTO customer VALUES
(1, 'Rahul Sharma'),
(2, 'Priya Mehta'),
(3, 'Amit Verma'),
(4, 'Sneha Patil'),
(5, 'Rohit Joshi');

INSERT INTO vehicle VALUES
(101, 'Honda City'),
(102, 'Hyundai Creta'),
(103, 'Tata Nexon'),
(104, 'Maruti Swift'),
(105, 'Kia Seltos');

INSERT INTO salesmen VALUES
(201, 'Vikram Sales'),
(202, 'Neha Kapoor'),
(203, 'Arjun Nair'),
(204, 'Divya Rao');

INSERT INTO transaction VALUES
(1001, 1, 101, 201, 850000),
(1002, 2, 103, 202, 1200000),
(1003, 3, 102, 201, 1350000),
(1004, 4, 104, 203,  650000),
(1005, 5, 105, 204, 1500000),
(1006, 1, 104, 202,  670000),
(1007, 3, 105, 203, 1480000);

SELECT * FROM customer;
SELECT * FROM vehicle;
SELECT * FROM salesmen;
SELECT * FROM transaction;

SELECT t.tid, t.custid, c.cname, t.buy_price
FROM transaction t
JOIN customer c ON t.custid = c.custid;

SELECT t.tid, t.custid, c.cname, t.vid, v.vname,
       t.sid, s.sname, t.buy_price
FROM transaction t
JOIN customer c ON t.custid = c.custid
JOIN vehicle  v ON t.vid    = v.vid
JOIN salesmen s ON t.sid    = s.sid;