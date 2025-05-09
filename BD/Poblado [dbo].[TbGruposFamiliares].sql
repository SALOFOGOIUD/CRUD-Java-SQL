/* LIMPIEZA TABLA	*/
DELETE FROM [dbo].[TbGruposFamiliares];
	DBCC CHECKIDENT ('TbGruposFamiliares', RESEED, 0);

/* POBLADO TABLA	*/
INSERT INTO [dbo].[TbGruposFamiliares]([FuncionarioID])
	VALUES (1);
INSERT INTO [dbo].[TbGruposFamiliares]([FuncionarioID])
	VALUES (8);
INSERT INTO [dbo].[TbGruposFamiliares]([FuncionarioID])
	VALUES (6);

/* COMPROBACIÓN TABLA	*/
SELECT * FROM TbGruposFamiliares WITH(NOLOCK)