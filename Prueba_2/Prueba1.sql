
/*** ########## CREACION ########## ***/

CREATE DATABASE PruebaNuxiba;
USE PruebaNuxiba;
GO

CREATE TABLE usuarios(
	userId INT IDENTITY PRIMARY KEY,
	Login  VARCHAR(100),
	Nombre VARCHAR(100),
	Paterno VARCHAR(100),
	Materno VARCHAR(100)
);

CREATE TABLE empleados(
	userId INT PRIMARY KEY,
	Sueldo FLOAT,
	FechaIngreso DATE,
	FOREIGN KEY (userID) REFERENCES usuarios(userId)
);
GO

INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user01', 'BERE', 'NARANJO', 'GONZALEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user02', 'ALEXIS', 'CAMPOS', 'NARANJO')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user03', 'SERGIO ALEJANDRO', 'CAMPOS', 'HERNANDEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user04', 'DIEGO ISMAEL', 'BERUMEN', 'CEDILLO')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user05', 'AURORA', 'ESCALANTE', 'PALAFOX')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user06', 'JOYCELENE FABIOLA', 'ESTRADA', 'BARBA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user07', 'FRANCISCO', 'ESTRADA', 'GOMEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user08', 'LEONARDO DANIEL', 'FARIAS', 'ROSAS')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user09', 'RAMON ANDRES', 'FIERROS', 'ROBLES')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user10', 'EDGAR ANDRES', 'FLORES', 'OLIVARES')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user11', 'MARIA FERNANDA', 'FRANCO', 'ESQUIVEL')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user12', 'ALEJANDRO', 'GALVAN', 'MUÑIZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user13', 'MARTHA ALICIA', 'GUTIERREZ', 'ORTIZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user14', 'JOSAFAT GERARDO', 'HERNANDEZ', 'SAUCEDO')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user15', 'ROSALIA', 'JIMENEZ', 'GONZALEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user16', 'LAURA CELENE', 'JIMENEZ', 'RIOS')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user17', 'ANGELICA', 'LOPEZ', 'CORTES')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user18', 'CRISTIAN IVAN', 'LOPEZ', 'GOMEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user19', 'MARLENE GABRIELA', 'LOPEZ', 'MEZA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user20', 'ALEJANDRA', 'MEDINA', 'IBARRA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user21', 'CONSUELO YURIDIANA THALIA', 'MEJIA', 'ALVAREZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user22', 'JAVIER ADRIAN', 'MEJIA', 'ALVAREZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user23', 'JUAN CARLOS EVARISTO', 'PEÑA', 'GUTIERREZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user24', 'JAZMIN ALEJANDRA', 'PEREZ', 'VELEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user25', 'GUSTAVO', 'RAMIREZ', 'RIVERA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user26', 'CARLOS NIVARDO', 'RODRIGUEZ', 'ASCENCIO')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user27', 'KARLA JOHANA', 'ROMERO', 'LUEVANOS')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user28', 'YESSICA YOSELINNE', 'RUIZ', 'HERNANDEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user29', 'CHRISTIAN EDUARDO', 'SALAS', 'SANCHEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user30', 'LUIS ROBERTO', 'SALDAÑA', 'ESPINOZA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user31', 'ADRIAN', 'SANCHEZ', 'ORTIZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user32', 'EDUARDO YAIR', 'SUAREZ', 'HERNANDEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user33', 'JUAN FRANCISCO', 'TABAREZ', 'GARCIA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user34', 'ZULEICA ELIZABETH', 'TERAN', 'TORRES')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user35', 'ADRIANA YUNUHEN', 'VARGAS', 'AYALA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user36', 'OSCAR URIEL', 'VELAZQUEZ', 'ALVAREZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user37', 'ERICK DE JESUS', 'CORONA', 'DIAZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user38', 'MARIA GUADALUPE', 'RAMOS', 'HERNANDEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user39', 'JESSICA NOEMI', 'JIMENEZ', 'VENTURA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user40', 'FLOR MARGARITA', 'ROJAS', 'HERNANDEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user41', 'LUIS ANTONIO', 'ALVARADO', 'VALENCIA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user42', 'EDGAR IVAN', 'AGUILAR', 'PADILLA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user43', 'LUIS ALFONSO', 'MICHEL', 'SANCHEZ')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user44', 'JOSE CARLOS', 'SILVA', 'ROCHA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user45', 'JUDITH', 'RODRIGUEZ', 'REYES')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user46', 'BRENDA SORAYA', 'CHAVEZ', 'GARCIA')
INSERT INTO USUARIOS (Login ,Nombre,Paterno,Materno ) VALUES ('user47', 'ALMA ROSA', 'MARQUEZ', 'AGUILA')

INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (1, 8837, '2000/01/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (2, 8837, '2000/01/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (3, 15000, '2000/01/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (4, 15000, '2000/01/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (5, 7812, '2000/01/18')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (6, 7812, '2000/01/18')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (7, 10200, '2000/01/18')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (8, 10200, '2000/01/18')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (9, 13800, '2001/05/20')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (10, 13800, '2001/05/20')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (11, 18880, '2001/05/20')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (12, 18880, '2001/05/20')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (13, 8000, '2001/07/13')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (14, 8000, '2001/07/13')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (15, 6000, '2001/07/13')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (16, 19470, '2001/07/13')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (17, 19470, '2001/07/13')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (18, 10200, '2001/07/16')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (19, 10200, '2001/07/16')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (20, 25000, '2001/07/16')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (21, 7812, '2001/07/16')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (22, 7812, '2001/07/16')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (23, 12210, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (24, 12210, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (25, 7500, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (26, 15020, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (27, 15020, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (28, 25000, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (29, 7812, '2001/11/24')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (30, 15020, '2001/12/12')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (31, 15020, '2001/12/12')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (32, 12210, '2001/12/12')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (33, 12210, '2001/12/12')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (34, 19470, '2008/08/17')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (35, 19470, '2008/08/17')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (36, 8000, '2008/08/17')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (37, 8000, '2008/08/17')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (38, 18880, '2009/06/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (39, 18880, '2009/06/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (40, 14000, '2009/06/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (41, 13800, '2009/06/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (42, 13800, '2009/06/11')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (43, 15000, '2009/10/06')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (44, 15000, '2009/10/06')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (45, 13000, '2009/10/06')
INSERT INTO Empleados(userId, Sueldo, FechaIngreso) VALUES (46, 8837, '2009/10/06')


/*** ########## CONSULTAS ########## ***/
-- Ej 1
SELECT userId FROM usuarios WHERE userId NOT IN (6,7,9,10);
GO

-- Ej 2
UPDATE Empleados
	SET Sueldo = Sueldo * 1.10
WHERE YEAR(FechaIngreso) BETWEEN 2000 AND 2001
GO

-- Ej 3
SELECT Nombre, FechaIngreso 
FROM  Usuarios u inner JOIN
	  Empleados e ON u.userID = e.userId 
WHERE 
	e.Sueldo > 10000 AND 
	u.paterno LIKE 'T%'
ORDER BY e.FechaIngreso DESC;

-- Ej 4
SELECT 
    ISNULL(SUM(conteoMenores), 0) as '< 1200', 
    ISNULL(SUM(conteoMayores), 0) as '>= 1200' 
FROM 
    (SELECT COUNT(*) AS conteoMenores FROM Empleados WHERE Sueldo < 1200) res -- Hay 0
    CROSS JOIN
    (SELECT COUNT(*) AS conteoMayores FROM Empleados WHERE Sueldo >= 1200) res2; -- Hay 46