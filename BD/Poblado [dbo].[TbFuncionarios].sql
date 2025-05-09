/* LIMPIEZA TABLA	*/
DELETE FROM [dbo].[TbFuncionarios];
	DBCC CHECKIDENT ('TbFuncionarios', RESEED, 0);

/* POBLADO TABLA	*/
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('CC', 4477571778, 'Tom', 'Hanks', 'Casado', 'M', '84930 Williams Parkways', '4719387', '1976-05-27');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('NIT', 5778564259, 'Scarlett', 'Johansson', 'Divorciada', 'F', '1833 Murphy Center', '(949)408-9275', '1982-05-23');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('CC', 2282163781, 'Denzel', 'Washington', 'Casado', 'M', '2844 Fleming Neck Suite 009', '008-591-1601x8819', '1994-02-02');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('CE', 8253588279, 'Emma', 'Stone', 'Soltera', 'F', '85095 Joshua Freeway Suite 196', '001-892-735-6092', '1991-04-23');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('CC', 8519602829, 'Leonardo', 'DiCaprio', 'Soltero', 'M', '059 Davis Orchard Suite 409', '+1-339-894-1952x834', '1967-02-07');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('NIT', 5322252001, 'Natalie', 'Portman', 'Casada', 'F', '52837 Morgan Port', '012-337-0908', '1977-07-14');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('TI', 9385884148, 'Brad', 'Pitt', 'Divorciado', 'M', '84310 Jimenez Plains', '198-315-2434x022', '1972-06-26');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('NIT', 8140304219, 'Jennifer', 'Lawrence', 'Soltera', 'F', '427 Sherry Pass', '(094)886-3905x3791', '1968-08-22');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('CC', 2539247677, 'Morgan', 'Freeman', 'Viudo', 'M', '73060 Duarte Lake Suite 566', '001-535-893-2030x4450', '1975-03-30');
INSERT INTO [dbo].[TbFuncionarios] (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) 
	VALUES ('NIT', 3753506864, 'Zendaya', 'Coleman', 'Soltera', 'F', '366 Olsen Oval', '488-001-2462', '1959-11-03');

/* COMPROBACIÓN TABLA	*/
SELECT * FROM [dbo].[TbFuncionarios] WITH(NOLOCK)