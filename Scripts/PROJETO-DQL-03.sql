USE SpMedicalGroup;

-- DQL



SELECT Paciente.NomePac,Paciente.Telefone,Paciente.CPF, Paciente.DataNascimento, Consulta.DataConsulta, Consulta.IdSituacao FROM Paciente
INNER JOIN Consulta ON Paciente.IdPaciente = Consulta.IdConsulta;



SELECT Paciente.NomePac,Paciente.Telefone, Paciente.DataNascimento, Consulta.DataConsulta, Consulta.IdSituacao, Medico.NomeMed FROM Medico
INNER JOIN Consulta ON Medico.IdMedico = Consulta.IdConsulta
INNER JOIN Paciente ON Paciente.IdPaciente = Medico.IdMedico;



SELECT Medico.NomeMed,Medico.CRM, Especialidade.NomeEsp FROM Medico
INNER JOIN Especialidade ON Medico.IdMedico = Especialidade.IdEspecialidade;


SELECT Medico.NomeMed,Medico.CRM, Clinica.NomeClin FROM Clinica
INNER JOIN Medico ON Medico.IdClinica = Clinica.IdClinica;


SELECT Paciente.NomePac,Paciente.Telefone,  DATEDIFF(year, DataNascimento, GETDATE()) AS Idade, Consulta.DataConsulta, Consulta.IdSituacao FROM Paciente
INNER JOIN Consulta ON Paciente.IdPaciente = Consulta.IdConsulta;

SELECT COUNT (IdUsuario)AS QuantidadedeUsuarios FROM Usuario;

SELECT Medico.NomeMed, Especialidade.NomeEsp FROM Medico
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
WHERE Especialidade.IdEspecialidade = 2



SELECT CONVERT(VARCHAR(10), DataNascimento, 101) AS [Mes/Dia/Ano] FROM Paciente;


CREATE PROCEDURE RetornarIdade
@Id INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) AS Idade
FROM Paciente
WHERE IdPaciente = @Id

EXECUTE RetornarIdade 3;






















