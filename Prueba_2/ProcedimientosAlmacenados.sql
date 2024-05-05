CREATE PROC sp_consultarUsuarios
AS
	SELECT TOP 10 u.userId, u.Nombre, u.Paterno, u.Materno, e.Sueldo, e.FechaIngreso FROM usuarios u 
	INNER JOIN empleados e ON u.userId = e.userId
GO

CREATE PROC sp_registrarUsuario
@Nombre VARCHAR(50),
@Paterno VARCHAR(50),
@Materno VARCHAR(50),
@Sueldo FLOAT,
@FechaIngreso DATE
AS
	INSERT INTO usuarios (Nombre, Paterno, Materno) VALUES (@Nombre, @Paterno, @Materno)

	DECLARE @idNuevoUsuario INT = @@IDENTITY

	UPDATE usuarios
		SET Login = 'userId' + CAST(@idNuevoUsuario AS VARCHAR(50))
	WHERE userId = @idNuevoUsuario

	INSERT INTO empleados (userId, Sueldo, FechaIngreso) VALUES (@idNuevoUsuario, @Sueldo, @FechaIngreso)
GO

CREATE PROC sp_actualizarSueldo
@userId VARCHAR(50),
@sueldo FLOAT
AS
	UPDATE empleados
	SET Sueldo = @sueldo
	WHERE userId = @userId
GO


CREATE PROC sp_consultaInfoCSV
AS
	SELECT u.userId, U.Login, u.Nombre,u.Paterno, u.Materno, e.Sueldo, e.FechaIngreso FROM usuarios u 
	INNER JOIN empleados e ON u.userId = e.userId
Go