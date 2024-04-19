CREATE TABLE Autos (
    auto_id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    precio DECIMAL(10, 2)
);

CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    dirección VARCHAR(100),
    teléfono VARCHAR(15)
);


CREATE TABLE AgentesVenta (
    agente_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    teléfono VARCHAR(15),
    correo_electrónico VARCHAR(100)
);

CREATE TABLE Ventas (
    venta_id INT PRIMARY KEY,
    auto_id INT,
    cliente_id INT,
    agente_id INT,
    fecha_venta DATE,
    precio_venta DECIMAL(10, 2),
    FOREIGN KEY (auto_id) REFERENCES Autos(auto_id),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (agente_id) REFERENCES AgentesVenta(agente_id)
);
