-- 1. Zamowienia VIP (> 500 zl) + dane klienta
SELECT 
    klienci.imie, 
    klienci.email, 
    zamowienia.kwota
FROM klienci
INNER JOIN zamowienia ON zamowienia.klient_id = klienci.id
WHERE zamowienia.kwota > 500
ORDER BY zamowienia.kwota DESC;


-- 2. Tylko oplacone zamowienia (od najwiekszej kwoty)
SELECT 
    id_zamowienia, 
    klient_id, 
    kwota
FROM zamowienia
WHERE status = 'OPLACONE'
ORDER BY kwota DESC;


-- 3. Test negatywny - bledne zamowienia (kwota 0 lub na minusie)
SELECT * 
FROM zamowienia 
WHERE kwota <= 0;


-- 4. Niskie stany magazynowe (ponizej 5 sztuk)
SELECT * 
FROM produkty 
WHERE stan_magazynowy < 5 
ORDER BY stan_magazynowy ASC;
