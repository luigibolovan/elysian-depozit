CREATE TABLE Clients
(
Client_ID int PRIMARY KEY,
Client_Name varchar(255)
);

CREATE TABLE Categories
(
Category_ID int PRIMARY KEY,
Category_Name varchar(63)
);

CREATE TABLE Products
(
Product_ID int PRIMARY KEY,
Product_Name varchar(127),
Price int
);

CREATE TABLE Products_Categories
(
Product_ID int REFERENCES Products(Product_ID),
Category_ID int REFERENCES Categories(Category_ID)
);

CREATE TABLE Orders
(
Order_ID int PRIMARY KEY,
Client_ID int REFERENCES Clients(Client_ID),
Order_Date DATE
);


CREATE TABLE Orders_Products
(
Order_ID int REFERENCES Orders(Order_ID),
Product_ID int REFERENCES Products(Product_ID),
Quantity int
);

INSERT ALL
    INTO Categories values (2, 'Antidiabetice')
    INTO Categories values (3, 'Vitamine')
    INTO Categories values (4, 'Tonice')
    INTO Categories values (5, 'Anabolice sistemice')
    INTO Categories values (6, 'Stimulante ale apetitului')
    INTO Categories values (7, 'Preparate nazale')
    INTO Categories values (8, 'Preparate pentru tratamentul tusei si racelii')
    INTO Categories values (9, 'Antihipertensive')
    INTO Categories values (10, 'Diuretice')
    INTO Categories values (11, 'Vasoprotectoare')
    INTO Categories values (12, 'Terapia cordului')
    INTO Categories values (13, 'Emoliente si protectoare')
    INTO Categories values (14, 'Antiseptice si dezinfectante')
    INTO Categories values (15, 'Produse oftalmologice')
SELECT 1 FROM DUAL;

INSERT INTO Categories values (16, 'Antibiotice');

INSERT ALL
    INTO Products values (1, 'Olaflur', 15)
    INTO Products values (2, 'Flourura de staniu', 25)
    INTO Products values (3, 'Clorhexidina', 30)
    INTO Products values (4, 'Miconazol', 12)
    INTO Products values (5, 'Tetraciclina', 35)
    INTO Products values (6, 'Clotrimazol', 50)
    INTO Products values (7, 'Insulina aspart', 60)
    INTO Products values (8, 'Glimidina', 38)
    INTO Products values (9, 'Fenformina si sulfonamide', 75)
    INTO Products values (10, 'Troglitazona', 33)
    INTO Products values (11, 'Multivitamine si fier', 21)
    INTO Products values (12, 'Tiamina', 22)
    INTO Products values (13, 'Acid ascorbic', 23)
    INTO Products values (14, 'Calciu', 25)
    INTO Products values (15, 'Biotina', 27)
    INTO Products values (16, 'Tonic', 33)
    INTO Products values (17, 'Stanozol', 32)
    INTO Products values (18, 'Afrin', 31)
    INTO Products values (19, 'Aspirin Complex', 10)
    INTO Products values (20, 'Nurofen', 12)
    INTO Products values (21, 'Theraflu', 8)
    INTO Products values (22, 'Esmolol', 24)
    INTO Products values (23, 'Nicardipina', 17)
    INTO Products values (24, 'Hidroclortiazida', 13)
    INTO Products values (25, 'Indapamida', 14)
    INTO Products values (26, 'Alle gel', 5)
    INTO Products values (27, 'Doxilek', 9)
    INTO Products values (28, 'Doxium', 13)
    INTO Products values (29, 'Adenosine', 17)
    INTO Products values (30, 'Adrenalina Terapia', 31)
    INTO Products values (31, 'Glicerol', 22)
    INTO Products values (32, 'Bepanthen', 15)
    INTO Products values (33, 'Fenol', 17)
    INTO Products values (34, 'Betadine', 18)
    INTO Products values (35, 'Dettolmed', 13)
    INTO Products values (36, 'Acetazolamida', 12)
    INTO Products values (37, 'Allergodil', 20)
SELECT 1 FROM DUAL;

INSERT INTO Products values (38, 'Amoxicilina', 13);
INSERT INTO Products values (39, 'Ampicilina', 13);

INSERT ALL
    INTO Products_Categories values (1, 1)
    INTO Products_Categories values (2, 1)
    INTO Products_Categories values (3, 1)
    INTO Products_Categories values (4, 1)
    INTO Products_Categories values (5, 1)
    INTO Products_Categories values (6, 1)
    INTO Products_Categories values (7, 2)
    INTO Products_Categories values (8, 2)
    INTO Products_Categories values (9, 2)
    INTO Products_Categories values (10, 2)
    INTO Products_Categories values (11, 3)
    INTO Products_Categories values (12, 3)
    INTO Products_Categories values (13, 3)
    INTO Products_Categories values (14, 3)
    INTO Products_Categories values (15, 3)
    INTO Products_Categories values (16, 4)
    INTO Products_Categories values (17, 5)
    INTO Products_Categories values (18 ,5)
    INTO Products_Categories values (19, 7)
    INTO Products_Categories values (20, 7)
    INTO Products_Categories values (21, 7)
    INTO Products_Categories values (19, 8)
    INTO Products_Categories values (20, 8)
    INTO Products_Categories values (21, 8)
    INTO Products_Categories values (22, 9)
    INTO Products_Categories values (23, 9)
    INTO Products_Categories values (24, 9)
    INTO Products_Categories values (23, 10)
    INTO Products_Categories values (24, 10)
    INTO Products_Categories values (25, 11)
    INTO Products_Categories values (26, 11)
    INTO Products_Categories values (27, 11)
    INTO Products_Categories values (28, 11)
    INTO Products_Categories values (29, 12)
    INTO Products_Categories values (30, 12)
    INTO Products_Categories values (31, 13)
    INTO Products_Categories values (32, 13)
    INTO Products_Categories values (33, 13)
    INTO Products_Categories values (34, 14)
    INTO Products_Categories values (35, 14)
    INTO Products_Categories values (36, 15)
    INTO Products_Categories values (37, 15)
SELECT 1 FROM DUAL;

INSERT INTO Products_Categories values (38, 16);
INSERT INTO Products_Categories values (39, 16);

INSERT ALL
    INTO Clients values (1, 'Fildas Trading - Catena')
    INTO Clients values (2, 'SIEPCOFAR - Farmacia Dona')
    INTO Clients values (3, 'Farmexim - Help Net')
    INTO Clients values (4, 'Sensiblu')
    INTO Clients values (5, 'Ropharma Brasov')
SELECT 1 FROM DUAL;

UPDATE Clients
SET Client_ID = 101 
WHERE Client_ID = 1;

UPDATE Clients
SET Client_ID = 102
WHERE Client_ID = 2;

UPDATE Clients
SET Client_ID = 103
WHERE Client_ID = 3;

UPDATE Clients
SET Client_ID = 104 
WHERE Client_ID = 4;

UPDATE Clients
SET Client_ID = 105 
WHERE Client_ID = 5;

INSERT INTO Clients values (106, 'Farmacia Vlad');

INSERT INTO Orders values(2000, 101, to_Date('2018-05-13', 'yyyy-mm-dd'));

INSERT ALL
    INTO Orders values (2001, 101, to_date('2019-01-13', 'yyyy-mm-dd'))
    INTO Orders values (2002, 101, to_date('2019-01-14', 'yyyy-mm-dd'))
    INTO Orders values (2003, 102, to_date('2019-02-01', 'yyyy-mm-dd'))
    INTO Orders values (2004, 102, to_date('2019-02-13', 'yyyy-mm-dd'))
    INTO Orders values (2005, 102, to_date('2019-03-13', 'yyyy-mm-dd'))
    INTO Orders values (2006, 103, to_date('2019-03-25', 'yyyy-mm-dd'))
    INTO Orders values (2007, 104, to_date('2019-04-05', 'yyyy-mm-dd'))
    INTO Orders values (2008, 105, to_date('2019-05-13', 'yyyy-mm-dd'))
SELECT 1 FROM DUAL;

INSERT INTO ORDERS values (2009, 106, to_date('2019-05-28', 'yyyy-mm-dd'));
INSERT INTO ORDERS values (2010, 106, to_date('2019-07-23', 'yyyy-mm-dd'));
INSERT INTO Orders values (2011, 102, to_date('2019-08-01', 'yyyy-mm-dd'));
INSERT INTO Orders values (2012, 102, to_date('2019-08-13', 'yyyy-mm-dd'));
INSERT INTO Orders values (2013, 102, to_date('2019-08-16', 'yyyy-mm-dd'));
INSERT INTO Orders values (2014, 102, to_date('2019-10-16', 'yyyy-mm-dd'));

INSERT INTO Orders_Products values(2000, 5, 300);

INSERT ALL
    INTO Orders_Products values (2001, 1, 400)
    INTO Orders_Products values (2002, 2, 500)
    INTO Orders_Products values (2003, 7, 1000)
    INTO Orders_Products values (2004, 6, 1450)
    INTO Orders_Products values (2004, 6, 1550)
    INTO Orders_Products values (2004, 6, 1600)
    INTO Orders_products values (2005, 8, 200)
    INTO Orders_products values (2005, 21, 200)
    INTO Orders_products values (2005, 24, 400)
    INTO Orders_products values (2005, 31, 800)
    INTO Orders_products values (2005, 33, 1000)
    INTO Orders_products values (2006, 30, 2000)
    INTO Orders_products values (2007, 17, 580)
    INTO Orders_products values (2008, 22, 800)
    INTO Orders_products values (2009, 38, 4000)
    INTO Orders_products values (2009, 39, 1200)
    INTO Orders_products values (2010, 38, 800)
    INTO Orders_products values (2010, 39, 500)
    INTO Orders_products values (2010, 15, 400)
    INTO Orders_products values (2011, 16, 230)
    INTO Orders_products values (2011, 23, 600)
    INTO Orders_products values (2011, 38, 400)
    INTO Orders_products values (2012, 31, 800)
    INTO Orders_products values (2012, 33, 900)
    INTO Orders_products values (2013, 12, 1000)
    INTO Orders_products values (2013, 32, 1000)
    INTO Orders_products values (2013, 21, 1000)
    INTO Orders_products values (2013, 13, 1000)
    INTO Orders_products values (2014, 14, 1200)
    INTO Orders_products values (2014, 12, 1300)
    INTO Orders_products values (2014, 17, 1100)
    INTO Orders_products values (2014, 19, 1000)
SELECT 1 FROM DUAL;


SELECT COUNT(*) FROM Orders
WHERE Client_ID IN (SELECT Client_ID FROM Clients WHERE Client_Name = 'SIEPCOFAR - Farmacia Dona') AND EXTRACT(MONTH FROM Order_Date) = 8;


SELECT * FROM Orders
WHERE Client_ID IN (SELECT Client_ID FROM Clients WHERE Client_Name = 'Farmacia Vlad') AND EXTRACT(YEAR FROM Order_date) = 2019
AND Order_ID IN 
    (SELECT Order_ID FROM Orders_Products WHERE Product_ID IN 
        (SELECT Product_ID FROM Products_Categories WHERE Category_ID IN
            (SELECT Category_ID FROM Categories WHERE Category_Name = 'Antibiotice')));
    
          
SELECT COUNT(*) FROM Orders_Products
WHERE Order_ID IN (SELECT Order_ID FROM Orders WHERE Client_ID IN (SELECT Client_ID FROM Clients WHERE Client_Name = 'Farmacia Vlad'))
AND Order_ID IN (SELECT ORDER_ID FROM Orders WHERE EXTRACT(YEAR FROM Order_Date) = 2019)
AND Product_ID IN (SELECT Product_ID FROM Products_Categories WHERE Category_ID IN (SELECT Category_ID FROM Categories WHERE Category_Name = 'Antibiotice'));

SELECT Client_ID FROM
    (SELECT Orders.Client_ID, Orders.Order_Date, SUM(Orders_Products.Quantity) ordered_Amount FROM Orders
    INNER JOIN Orders_Products ON Orders.Order_ID = Orders_Products.Order_ID AND EXTRACT(YEAR FROM Orders.Order_Date) = 2019
    GROUP BY Orders.Client_ID, Orders.Order_Date, Orders_Products.Quantity) grp
    
    WHERE grp.ordered_Amount = (SELECT MAX(Orders_Products.Quantity) from Orders_products);

    
