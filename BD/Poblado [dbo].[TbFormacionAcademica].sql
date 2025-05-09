/* LIMPIEZA TABLA	*/
DELETE FROM [dbo].[TbFormacionAcademica];
	DBCC CHECKIDENT ('TbFormacionAcademica', RESEED, 0);

/* POBLADO TABLA	*/
INSERT INTO [dbo].[TbFormacionAcademica] ([FuncionarioID],[Universidad],[NivelEstudio],[TituloObtenido],[Estatus]) 
	VALUES (1,'IUD ANTIOQUIA','TECNOLOGO','DESARROLLO DE SOFTWARE','EN CURSO');
INSERT INTO [dbo].[TbFormacionAcademica] ([FuncionarioID],[Universidad],[NivelEstudio],[TituloObtenido],[Estatus]) 
	VALUES (2,'U ANTIOQUIA','PROFESIONAL','PSICOLOGO','FINALIZADO');
INSERT INTO [dbo].[TbFormacionAcademica] ([FuncionarioID],[Universidad],[NivelEstudio],[TituloObtenido],[Estatus]) 
	VALUES (3,'UPB','PROFESIONAL','MEDICO','FINALIZADO');
INSERT INTO [dbo].[TbFormacionAcademica] ([FuncionarioID],[Universidad],[NivelEstudio],[TituloObtenido],[Estatus]) 
	VALUES (3,'UPB','PROFESIONAL','ING AMBIENTAL','PAUSADO');

/* COMPROBACIÓN TABLA	*/
SELECT * FROM [dbo].[TbFormacionAcademica] WITH(NOLOCK)