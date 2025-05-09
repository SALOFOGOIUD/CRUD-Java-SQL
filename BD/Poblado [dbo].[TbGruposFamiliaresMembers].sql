/* LIMPIEZA TABLA	*/
DELETE FROM [dbo].[TbGruposFamiliaresMembers];
	DBCC CHECKIDENT ('TbGruposFamiliaresMembers', RESEED, 0);

/* POBLADO TABLA	*/
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (1, 4755497536, 'Matthew', 'Sweeney', 'Cónyuge', '2013-08-26', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (1, 5885926512, 'Kevin', 'Mueller', 'Cónyuge', '1965-02-18', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (1, 7740692056, 'Nicholas', 'White', 'Cónyuge', '1991-05-18', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (2, 3850264819, 'Bryan', 'Simon', 'Hijo', '1960-11-09', 'M');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (2, 6788908747, 'Steven', 'Becker', 'Madre', '1971-10-21', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (2, 7120917678, 'Wesley', 'Walsh', 'Madre', '1974-08-25', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (3, 3495052339, 'Christina', 'Diaz', 'Madre', '1977-12-30', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (3, 7048499165, 'Anna', 'Miller', 'Hija', '2016-03-29', 'F');
INSERT INTO [dbo].[TbGruposFamiliaresMembers] (GrupoFamiliarID, NumeroIdentificacion, NombreMiembro, ApellidoMiembro, Rol, FechaNacimiento, Sexo) 
	VALUES (3, 9617500715, 'James', 'Marshall', 'Padre', '1992-02-23', 'M');

/* COMPROBACI�N TABLA	*/
SELECT * FROM [dbo].[TbGruposFamiliaresMembers] WITH(NOLOCK)