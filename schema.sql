SQL
-- Database setup for QA portfolio tests

CREATE TABLE klienci (
    id INT PRIMARY KEY,
    imie VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE produkty (
    id INT PRIMARY KEY,
    nazwa VARCHAR(100),
    cena DECIMAL(10, 2),
    stan_magazynowy INT
);

CREATE TABLE zamowienia (
    id_zamowienia INT PRIMARY KEY,
    klient_id INT,
    kwota DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (klient_id) REFERENCES klienci(id)
);

-- Test data (mock data)
INSERT INTO klienci (id, imie, email) VALUES 
(1, 'Anna Nowak', 'anna@test.pl'),
(2, 'Jan Kowalski', 'jan@test.pl'),
(3, 'Marek Wiśniewski', 'marek@test.pl');

INSERT INTO produkty (id, nazwa, cena, stan_magazynowy) VALUES 
(1, 'Laptop Gamingowy X1', 4500.00, 2),
(2, 'Mysz bezprzewodowa Pro', 150.00, 25),
(3, 'Klawiatura mechaniczna RGB', 350.00, 0),
(4, 'Monitor 27 cali 4K', 1800.00, 4);

INSERT INTO zamowienia (id_zamowienia, klient_id, kwota, status) VALUES 
(101, 1, 650.00, 'OPLACONE'),
(102, 2, 120.50, 'ANULOWANE'),
(103, 1, 890.00, 'OPLACONE'),
(104, 3, -50.00, 'BLAD_PLATNOSCI');
