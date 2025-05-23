-- 1. Inserindo Categorias

INSERT INTO Categories (name) VALUES ('Antibiotics');
INSERT INTO Categories (name) VALUES ('Antidepressants');
INSERT INTO Categories (name) VALUES ('Analgesics');
INSERT INTO Categories (name) VALUES ('Vitamins');
INSERT INTO Categories (name) VALUES ('Topical Ointments');
INSERT INTO Categories (name) VALUES ('Cough Suppressants');
INSERT INTO Categories (name) VALUES ('Antipyretics');
INSERT INTO Categories (name) VALUES ('Hormones');
INSERT INTO Categories (name) VALUES ('Antihistamines');
INSERT INTO Categories (name) VALUES ('Probiotics');

-- 2. Inserindo Fornecedores



INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor A', '62 91234-5678', 'Rua A, 123');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor B', '62 92345-6789', 'Rua B, 456');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor C', '62 93456-7890', 'Rua C, 789');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor D', '62 94567-8901', 'Rua D, 101');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor E', '62 95678-9012', 'Rua E, 202');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor F', '62 96789-0123', 'Rua F, 303');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor G', '62 97890-1234', 'Rua G, 404');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor H', '62 98901-2345', 'Rua H, 505');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor I', '62 99012-3456', 'Rua I, 606');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor J', '62 90123-2567', 'Rua J, 707');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor K', '62 90123-1167', 'Rua k, 801');
INSERT INTO Suppliers (name, phone, address) VALUES ('Fornecedor L', '62 90123-9667', 'Rua l, 103');


-- 3. Inserindo Medicamentos

INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Amoxicilina', 1, 1, 25.00, 100);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Fluoxetina', 2, 2, 35.00, 50);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Paracetamol', 3, 3, 10.00, 200);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Ácido Ascórbico', 4, 4, 15.00, 300);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Hidrocortisona', 5, 5, 20.00, 80);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Dexametasona', 5, 6, 30.00, 60);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Ibuprofeno', 3, 7, 18.00, 150);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Sertralina', 2, 8, 40.00, 75);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Loradatadina', 9, 9, 22.00, 92);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Probiotics X', 10, 10, 55.00, 45);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Citrus Bioflavonoids', 4, 1, 30.00, 200);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Cough Syrup ABC', 6, 2, 25.00, 120);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Loratadina', 9, 3, 19.00, 80);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Antitussígeno XYZ', 6, 4, 28.00, 90);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Vitamin D3', 4, 5, 12.00, 300);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Melatonina', 4, 6, 18.00, 150);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Prednisona', 5, 7, 40.00, 70);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Cetirizina', 9, 8, 25.00, 100);
INSERT INTO Medications (name, category_id, supplier_id, price, stock) VALUES ('Ranitidina', 1, 9, 15.00, 60);

-- 4. Inserindo Clientes

INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('João Silva', '12345678901', '1985-03-15');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Maria Oliveira', '23456789012', '1992-07-21');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Carlos Souza', '34567890123', '2000-01-30');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Ana Pereira', '45678901234', '1975-11-12');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Fernanda Lima', '56789012345', '1988-09-05');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Roberto Santos', '67890123456', '1995-12-10');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Juliana Costa', '78901234567', '1990-06-22');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Paulo Almeida', '89012345678', '1983-04-18');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Letícia Martins', '90123456789', '1989-01-09');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('André Lima', '01234567890', '1980-05-25');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Thiago Mendes', '21345678901', '1979-08-14');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Priscila Rocha', '32456789012', '1998-02-02');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Felipe Dias', '43567890123', '1991-11-19');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Sofia Fonseca', '54678901234', '1994-03-30');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Gabriel Ferreira', '65789012345', '1987-07-07');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Bianca Teixeira', '76890123456', '1993-09-15');
INSERT INTO Customers (name, cpf, date_of_birth) VALUES ('Vitor Hugo', '87901234567', '2002-12-01');

-- 5. Inserindo Vendas

INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-01 10:00:00', 1, 65.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-02 11:30:00', 2, 35.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-03 12:15:00', 3, 40.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-04 14:45:00', 4, 20.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-05 16:20:00', 5, 90.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-06 09:15:00', 1, 30.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-07 10:30:00', 6, 70.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-08 13:00:00', 7, 50.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-09 15:00:00', 8, 80.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-10 17:45:00', 9, 45.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-11 18:30:00', 10, 55.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-12 19:15:00', 11, 25.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-13 20:00:00', 12, 41.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-14 14:00:00', 13, 95.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-15 16:40:00', 14, 60.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-16 12:30:00', 15, 30.00);
INSERT INTO Sales (date, customer_id, total) VALUES ('2025-05-17 10:45:00', 16, 75.00);

-- 6. Inserindo Itens de Vendas

INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (1, 1, 2, 25.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (1, 3, 1, 10.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (2, 2, 1, 35.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (3, 3, 4, 10.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (4, 4, 1, 15.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (5, 1, 3, 25.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (5, 5, 1, 20.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (6, 6, 2, 30.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (7, 2, 1, 35.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (8, 3, 4, 10.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (9, 10, 1, 55.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (10, 6, 1, 25.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (11, 7, 2, 18.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (12, 8, 1, 40.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (13, 9, 3, 19.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (14, 4, 1, 15.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (15, 5, 1, 20.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (16, 1, 1, 25.00);
INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (17, 5, 2, 20.00);

