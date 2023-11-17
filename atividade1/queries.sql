-- clients with a specific CPF
SELECT * FROM clients WHERE CPF = '12345678901';

-- electronic products with an evaluation greater more for 4
SELECT * FROM product WHERE category = 'Eletrônico' AND avaliação > 4;

--  total payment limit grouping by client
SELECT idclient, SUM(limitAvailable) AS totalLimit
FROM payments
GROUP BY idclient;

-- clients ordered by name
SELECT * FROM clients ORDER BY Fname ;

-- products ordered by category and name
SELECT * FROM product ORDER BY category, Pname;

-- client have made orders with a total value greater > 100
SELECT idOrderClient, SUM(sendValue) AS totalValue
FROM orders
GROUP BY idOrderClient
HAVING totalValue > 100;
-- use remane for having whith AS

-- product name, qtd sold by seller
SELECT s.SocialName AS SellerName, ps.prodQuantity, p.Pname
FROM seller s
JOIN productSeller ps ON s.idSeller = ps.idPseller
JOIN product p ON ps.idPproduct = p.idProduct;