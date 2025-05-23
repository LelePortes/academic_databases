
-- Cria a tabela Departamentos
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY IDENTITY(1,1),
    NomeDepartamento VARCHAR(100) NOT NULL UNIQUE,
    ChefeDepartamento VARCHAR(100)
);
GO

-- Cria a tabela Professores (NOVA TABELA)
CREATE TABLE Professores (
    ProfessorID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Contrato VARCHAR(50), -- Ex: 'Integral', 'Parcial'
    Salario DECIMAL(10, 2),
    DepartamentoID INT, -- Departamento do professor
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);
GO

-- Cria a tabela Cursos (MODIFICADA para incluir ProfessorID)
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY IDENTITY(1,1),
    NomeCurso VARCHAR(255) NOT NULL UNIQUE,
    Creditos INT NOT NULL,
    DepartamentoID INT NOT NULL,
    ProfessorID INT, -- Professor respons�vel pelo curso (NOVA COLUNA)
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID),
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ProfessorID) -- NOVA CHAVE ESTRANGEIRA
);
GO

-- Cria a tabela Alunos (SEM ALTERA��ES ESTRUTURAIS)
CREATE TABLE Alunos (
    AlunoID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    DataMatricula DATE NOT NULL,
    MajorDepartamentoID INT, -- Departamento do curso principal do aluno
    FOREIGN KEY (MajorDepartamentoID) REFERENCES Departamentos(DepartamentoID)
);
GO

-- Cria a tabela Matriculas (SEM ALTERA��ES ESTRUTURAIS)
CREATE TABLE Matriculas (
    MatriculaID INT PRIMARY KEY IDENTITY(1,1),
    AlunoID INT NOT NULL,
    CursoID INT NOT NULL,
    AnoSemestre VARCHAR(10) NOT NULL, -- Ex: '2023-1', '2023-2', '2024-1'
    NotaFinal DECIMAL(4, 2), -- Pode ser NULL se o curso n�o terminou
    StatusMatricula VARCHAR(50) DEFAULT 'Ativa', -- Ex: 'Ativa', 'Conclu�da', 'Trancada'
    UNIQUE (AlunoID, CursoID, AnoSemestre), -- Um aluno n�o pode se matricular no mesmo curso no mesmo semestre
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);
GO