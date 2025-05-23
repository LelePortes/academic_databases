-- Creating the Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY identity(1,1) not null,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Creating the Suppliers table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY identity(1,1) not null,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Creating the Medications table
CREATE TABLE Medications (
    medication_id INT PRIMARY KEY identity(1,1) not null,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    supplier_id INT, -- Adicionando a coluna supplier_id
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    stock INT NOT NULL CHECK (stock >= 0),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id) ON DELETE SET NULL -- Chave estrangeira para Suppliers
);

-- Creating the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY identity(1,1) not null,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE, -- CPF is a Brazilian identification number
    date_of_birth DATE NOT NULL
);

-- Creating the Sales table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY identity(1,1) not null,
    date DATETIME NOT NULL,
    customer_id INT,
    total DECIMAL(10, 2) NOT NULL CHECK (total >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

-- Creating the Sale_Items table
CREATE TABLE Sale_Items (
    sale_item_id INT PRIMARY KEY identity(1,1) not null,
    sale_id INT,
    medication_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10, 2) NOT NULL CHECK (unit_price >= 0),
    FOREIGN KEY (sale_id) REFERENCES Sales(sale_id) ON DELETE CASCADE,
    FOREIGN KEY (medication_id) REFERENCES Medications(medication_id) ON DELETE CASCADE
);
