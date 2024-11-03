--CREACIÓN DE USUARIO SI TRABAJAS CON ORACLE CLOUD

CREATE USER MDY2131_P1 
IDENTIFIED BY "MDY2131.practica_1"
DEFAULT TABLESPACE DATA
TEMPORARY TABLESPACE "TEMP";

ALTER USER MDY2131_P1 QUOTA UNLIMITED ON DATA;

GRANT CREATE SESSION TO MDY2131_P1;

GRANT "RESOURCE" TO MDY2131_P1;

ALTER USER MDY2131_P1 DEFAULT ROLE "RESOURCE";

--CREACIÓN DE SCHEMA CONECTADO CON USUARIO MDY2131_P1
-- Creación de la tabla Productos
CREATE TABLE Productos (
    producto_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    precio NUMBER(10, 2) NOT NULL,
    categoria VARCHAR2(50)
);

-- Creación de la tabla Clientes
CREATE TABLE Clientes (
    cliente_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    fecha_registro DATE DEFAULT SYSDATE,
    ciudad VARCHAR2(50)
);

-- Creación de la tabla Ventas
CREATE TABLE Ventas (
    venta_id NUMBER PRIMARY KEY,
    producto_id NUMBER NOT NULL,
    cliente_id NUMBER NOT NULL,
    fecha DATE DEFAULT SYSDATE,
    cantidad NUMBER NOT NULL,
    -- Definición de claves foráneas
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES Productos(producto_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- Poblamiento de la tabla Productos
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (1, 'Laptop', 1500.00, 'Electrónica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (2, 'Teléfono', 800.00, 'Electrónica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (3, 'Teclado', 30.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (4, 'Monitor', 200.00, 'Electrónica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (5, 'Impresora', 120.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (6, 'Mouse', 25.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (7, 'Cámara', 300.00, 'Fotografía');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (8, 'Auriculares', 50.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (9, 'Tablet', 350.00, 'Electrónica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (10, 'Bocinas', 75.00, 'Audio');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (11, 'Disco Duro', 100.00, 'Almacenamiento');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (12, 'Memoria USB', 15.00, 'Almacenamiento');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (13, 'Router', 60.00, 'Redes');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (14, 'Cargador', 20.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (15, 'Laptop Gamer', 2500.00, 'Electrónica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (16, 'Silla de Oficina', 100.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (17, 'Proyector', 450.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (18, 'Microondas', 90.00, 'Hogar');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (19, 'Refrigerador', 800.00, 'Hogar');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (20, 'Ventilador', 40.00, 'Hogar');

--Visualización tabla productos
SELECT*FROM productos;

-- Poblamiento de la tabla Clientes
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (1, 'Juan Pérez', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Santiago');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (2, 'María López', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Valparaíso');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (3, 'Carlos Díaz', TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Concepción');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (4, 'Ana González', TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'La Serena');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (5, 'Pedro Morales', TO_DATE('2023-05-23', 'YYYY-MM-DD'), 'Antofagasta');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (6, 'Sofía Ramírez', TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Rancagua');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (7, 'Felipe Castillo', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'Temuco');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (8, 'Lorena Soto', TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Iquique');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (9, 'Gonzalo Herrera', TO_DATE('2023-09-07', 'YYYY-MM-DD'), 'Copiapó');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (10, 'Patricia Figueroa', TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Chillán');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (11, 'Diego Fuentes', TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'Osorno');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (12, 'Natalia Vargas', TO_DATE('2023-02-12', 'YYYY-MM-DD'), 'Puerto Montt');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (13, 'Esteban Martínez', TO_DATE('2023-03-19', 'YYYY-MM-DD'), 'Arica');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (14, 'Verónica Tapia', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Coyhaique');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (15, 'Andrés Paredes', TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'Punta Arenas');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (16, 'Camila Flores', TO_DATE('2023-06-22', 'YYYY-MM-DD'), 'Talca');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (17, 'Jorge Salinas', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'Quillota');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (18, 'Paulina Rojas', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 'Calama');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (19, 'Ricardo Vargas', TO_DATE('2023-09-20', 'YYYY-MM-DD'), 'Viña del Mar');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (20, 'Tamara Fernández', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Arica');

--Visualización tabla cliente
SELECT*FROM Clientes;

-- Poblamiento de la tabla Ventas
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (1, 1, 1, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (2, 2, 3, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (3, 5, 2, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (4, 3, 4, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (5, 4, 5, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (6, 6, 6, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (7, 7, 7, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 4);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (8, 8, 8, TO_DATE('2023-09-10', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (9, 9, 9, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (10, 10, 10, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (11, 11, 11, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (12, 12, 12, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 5);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (13, 13, 13, TO_DATE('2023-10-12', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (14, 14, 14, TO_DATE('2023-09-25', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (15, 15, 15, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (16, 16, 16, TO_DATE('2023-07-30', 'YYYY-MM-DD'), 4);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (17, 17, 17, TO_DATE('2023-06-21', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (18, 18, 18, TO_DATE('2023-05-19', 'YYYY-MM-DD'), 6);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (19, 19, 19, TO_DATE('2023-04-11', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (20, 20, 20, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 2);

--Visualización tabla ventas
SELECT*FROM Ventas;

COMMIT;

--Listar productos con categoria, ordenados de mayor a menor.
SELECT categoria, 
       UPPER(nombre) AS productos, 
       nombre || ' - ' || categoria AS nombre_categoria,
       precio
FROM Productos
ORDER BY precio DESC;

--Mes/año con mayores ventas registradas, promedio y total.
SELECT 
    EXTRACT(YEAR FROM fecha) AS año,
    EXTRACT(MONTH FROM fecha) AS mes,
    CAST(AVG(cantidad) AS NUMBER(10, 2)) AS promedio_ventas,
    SUM(cantidad) AS total_ventas
FROM Ventas
GROUP BY EXTRACT(YEAR FROM fecha), EXTRACT(MONTH FROM fecha)
ORDER BY total_ventas DESC
FETCH FIRST 1 ROW ONLY;

--Id del cliente que más ha gastado en un lapso de tiempo menor a 1 año/registor menor a 1 año
SELECT v.cliente_id, 
       TO_CHAR(c.fecha_registro, 'YYYY-MM-DD') AS fecha_registro,
       SUM(v.cantidad * p.precio) AS total_gasto
FROM Ventas v
JOIN Productos p ON v.producto_id = p.producto_id
JOIN Clientes c ON v.cliente_id = c.cliente_id
WHERE v.fecha BETWEEN TO_DATE('2023-10-01', 'YYYY-MM-DD') AND TO_DATE('2024-10-31', 'YYYY-MM-DD')
  AND c.fecha_registro BETWEEN TO_DATE('2023-10-01', 'YYYY-MM-DD') AND TO_DATE('2024-10-31', 'YYYY-MM-DD')
GROUP BY v.cliente_id, c.fecha_registro
ORDER BY total_gasto DESC
FETCH FIRST 1 ROW ONLY;

--Crear creación tabla empleados
CREATE TABLE Empleados (
    empleado_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    departamento VARCHAR2(100),
    fecha_contratacion DATE,
    salario NUMBER(10, 2)
);

--Poblar datos de empleados
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (1, 'Juan Pérez', 'Recursos Humanos', TO_DATE('2021-02-15', 'YYYY-MM-DD'), 4500.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (2, 'María Gómez', 'Finanzas', TO_DATE('2022-06-10', 'YYYY-MM-DD'), 5200.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (3, 'Carlos Díaz', 'Marketing', TO_DATE('2023-01-20', 'YYYY-MM-DD'), 4800.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (4, 'Ana González', 'Ventas', TO_DATE('2020-08-25', 'YYYY-MM-DD'), 4600.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (5, 'Pedro Martínez', 'IT', TO_DATE('2021-12-01', 'YYYY-MM-DD'), 6100.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (6, 'Lucía Fernández', 'Operaciones', TO_DATE('2019-03-18', 'YYYY-MM-DD'), 5300.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (7, 'Miguel Torres', 'Recursos Humanos', TO_DATE('2022-09-12', 'YYYY-MM-DD'), 4400.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (8, 'Patricia Sánchez', 'Finanzas', TO_DATE('2023-05-22', 'YYYY-MM-DD'), 5500.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (9, 'Javier López', 'Marketing', TO_DATE('2020-10-05', 'YYYY-MM-DD'), 4700.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (10, 'Sandra Rojas', 'Ventas', TO_DATE('2018-11-20', 'YYYY-MM-DD'), 4900.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (11, 'José Ramírez', 'IT', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 6200.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (12, 'Laura Herrera', 'Operaciones', TO_DATE('2019-12-15', 'YYYY-MM-DD'), 5100.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (13, 'Sergio Castro', 'Recursos Humanos', TO_DATE('2020-07-13', 'YYYY-MM-DD'), 4600.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (14, 'Elena Vega', 'Finanzas', TO_DATE('2022-04-08', 'YYYY-MM-DD'), 5400.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (15, 'Daniel Ruiz', 'Marketing', TO_DATE('2021-06-28', 'YYYY-MM-DD'), 4800.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (16, 'Marta Sánchez', 'Ventas', TO_DATE('2023-03-30', 'YYYY-MM-DD'), 4700.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (17, 'Roberto Castillo', 'IT', TO_DATE('2021-11-02', 'YYYY-MM-DD'), 6000.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (18, 'Raquel Morales', 'Operaciones', TO_DATE('2022-01-14', 'YYYY-MM-DD'), 5200.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (19, 'Manuel Álvarez', 'Recursos Humanos', TO_DATE('2020-03-03', 'YYYY-MM-DD'), 4500.00);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (20, 'Nadia Ibáñez', 'Finanzas', TO_DATE('2021-09-07', 'YYYY-MM-DD'), 5500.00);

--Agregar empleados con más de 10 años en la empresa
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (21, 'Luis Pérez', 'Recursos Humanos', TO_DATE('2010-08-15', 'YYYY-MM-DD'), 5000);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (22, 'Carla Martínez', 'Ventas', TO_DATE('2009-05-10', 'YYYY-MM-DD'), 5500);
INSERT INTO Empleados (empleado_id, nombre, departamento, fecha_contratacion, salario) VALUES (23, 'Raúl García', 'IT', TO_DATE('2011-03-20', 'YYYY-MM-DD'), 6000);

--visualizar mi tabla empleados
SELECT*FROM Empleados;

--Determinar salario minimo,maximo y salario promedio por departamento.
SELECT departamento, 
       MAX(salario) AS salario_maximo, 
       MIN(salario) AS salario_minimo, 
       ROUND(AVG(salario), 2) AS salario_promedio
FROM Empleados
GROUP BY departamento;

--Calcular antiguedad en años
SELECT empleado_id, 
       nombre, 
       departamento, 
       ROUND(MONTHS_BETWEEN(SYSDATE, fecha_contratacion) / 12, 2) AS "AÑOS DE ANTIGUEDAD"
FROM Empleados
WHERE (MONTHS_BETWEEN(SYSDATE, fecha_contratacion) / 12) > 10
ORDER BY "AÑOS DE ANTIGUEDAD" DESC;