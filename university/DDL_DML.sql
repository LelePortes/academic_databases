USE university

CREATE TABLE tbCar (
carID int IDENTITY (1,1) NOT NULL,
model varchar(120) NOT NULL,
color varchar(100) NOT NULL,
[year] int NOT NULL,
maker varchar(250) NOT NULL,
price decimal (19,2) NOT NULL,
PRIMARY KEY (carID)
);
INSERT INTO tbCar(model, color, year, maker, price)VALUES
				('Onix Plus', 'Gray', 2020, 'Chevrolet', 53500.00),
				('Argo', 'Gray', 2019, 'Fiat', 53990.00),
				('Cruze', 'Black', 2019, 'Chevrolet', 105000.29);