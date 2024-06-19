CREATE DATABASE ProyectoDamian;
USE ProyectoDamian;

CREATE TABLE Productos(
	IdProducto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(100),
    Nombre VARCHAR(100) NOT NULL,
    Marca VARCHAR(100),
    Medicamento ENUM("SI", "NO") NOT NULL,
    Stock INT,
    Precio_Venta DOUBLE NOT NULL,
    Obs VARCHAR(500)
    );
 
 CREATE TABLE Clientes(
	IdCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(100),
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    Domicilio VARCHAR(100),
    Email VARCHAR(100) NOT NULL,
    Telefono VARCHAR(100),
    Cant_Pac INT,
    Obs VARCHAR(500)
    );

CREATE TABLE Animales(
	IdAnimal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    Domicilio VARCHAR(100),
    Email VARCHAR(100) NOT NULL,
    Telefono VARCHAR(100),
    IdCliente INT ,
    Especie VARCHAR(100) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    Edad VARCHAR(100),
    Vacunado ENUM("SI", "NO") NOT NULL,
    Ultima_Visita DATE,
    Proxima_Visita DATE,
    Obs VARCHAR(999)
    );
    
CREATE TABLE Compras(
	IdCompra INT NOT NULL PRIMARY KEY auto_increment,
    IdProv INT,
    IdProducto INT NOT NULL,
    Nro_Fact VARCHAR(100),
    Precio DOUBLE NOT NULL,
    Fecha DATE NOT NULL,
    Nombre_Prod VARCHAR(100)
    );
    
CREATE TABLE Ventas(
	IdVenta INT NOT NULL PRIMARY KEY auto_increment,
    IdCliente INT,
    IdProducto INT NOT NULL,
    Nro_Fact VARCHAR(100),
    Precio DOUBLE NOT NULL,
    Fecha DATE NOT NULL,
    Nombre_Prod VARCHAR(100)
    );
    
CREATE TABLE Proveedores(
	IdProv INT NOT NULL PRIMARY KEY auto_increment,
    Nombre VARCHAR(100) NOT NULL,
    Contacto VARCHAR(100),
    Domicilio VARCHAR(100),
    Email VARCHAR(100) NOT NULL,
    Telefono VARCHAR(100),
    Obs VARCHAR(500)
    );
    
CREATE TABLE EncuestasSatisfaccion(
	IdEncuesta INT NOT NULL PRIMARY KEY auto_increment,
    IdCliente INT,
    IdAnimal INT,
    Fecha DATE,
    Cuest INT,
    Obs VARCHAR(500),
    IdVisita INT,
    IdProducto int
    );
    
CREATE TABLE Visitas(
	IdVisita INT NOT NULL PRIMARY KEY auto_increment,
    Nombre VARCHAR(100),
    IdAnimal INT NOT NULL,
    IdCliente INT,
    Obs VARCHAR(500),
    Fecha DATE NOT NULL,
    Ultima_Visita DATE,
    Proxima_Visita DATE,
    Precio DOUBLE
    );
    /*Hay que agregar las foreign keys */
ALTER TABLE Compras
		ADD CONSTRAINT IdProv FOREIGN KEY (IdProv) REFERENCES Proveedores(IdProv);
ALTER TABLE Compras
		ADD CONSTRAINT IdProducto FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto);  

ALTER TABLE Animales
	ADD CONSTRAINT IdCliente FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente);

ALTER TABLE EncuestasSatisfaccion
	ADD CONSTRAINT IdAnimal FOREIGN KEY (IdAnimal) REFERENCES Animales(IdAnimal);











    
    
    



















 



