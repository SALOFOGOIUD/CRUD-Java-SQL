USE [RRHH_IUD];
GO

CREATE TABLE TbFuncionarios (
    FuncionarioID BIGINT PRIMARY KEY IDENTITY,
    TipoIdentificacion VARCHAR(20),
    NumeroIdentificacion BIGINT UNIQUE,
    Nombres NVARCHAR(100) NOT NULL,
    Apellidos NVARCHAR(100) NOT NULL,
    EstadoCivil VARCHAR(20) NOT NULL,
    Sexo VARCHAR(20) NOT NULL,
    Direccion VARCHAR(200) NULL,
    Telefono VARCHAR(20) NULL,
    FechaNacimiento DATE NOT NULL
);

CREATE TABLE TbFormacionAcademica (
    Registro BIGINT PRIMARY KEY IDENTITY,
    FuncionarioID BIGINT FOREIGN KEY REFERENCES TbFuncionarios(FuncionarioID),
    Universidad NVARCHAR(100) NOT NULL,
    NivelEstudio VARCHAR(50) NOT NULL,
    TituloObtenido NVARCHAR(100) NOT NULL,
	Estatus NVARCHAR(100) NOT NULL
);

CREATE TABLE TbGruposFamiliares (
    GrupoFamiliarID BIGINT PRIMARY KEY IDENTITY,
    FuncionarioID BIGINT FOREIGN KEY REFERENCES TbFuncionarios(FuncionarioID),
);

CREATE TABLE TbGruposFamiliaresMembers (
    Registro BIGINT PRIMARY KEY IDENTITY,
    GrupoFamiliarID BIGINT FOREIGN KEY REFERENCES TbGruposFamiliares(GrupoFamiliarID),
    NumeroIdentificacion BIGINT UNIQUE,	
    NombreMiembro NVARCHAR(100),
    ApellidoMiembro NVARCHAR(100),
    Rol VARCHAR(50),
    FechaNacimiento DATE,
    Sexo CHAR(1)
);

