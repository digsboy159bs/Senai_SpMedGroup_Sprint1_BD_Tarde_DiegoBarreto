USE SpMedicalGroup;

--DML

INSERT INTO TipoUsuario(Titulo)
VALUES ('Adm'),('Medico'),('Paciente')
GO

INSERT INTO Especialidade(NomeEsp)
VALUES ('Acupuntura'),
('Anestesiologia'),
('Angiologia'),
('Cardiologia'),
('Cirurgia Cardiovascular'),
('Cirurgia da M�o'),
('Cirurgia do Aparelho Digestivo'),
('Cirurgia Geral'),
('Cirurgia Pedi�trica'),
('Cirurgia Pl�stica'),
('Cirurgia Tor�cica'),
('Cirurgia Vascular'),
('Dermatologia'),
('Radioterapia'),
('Urologia'),
('Pediatria'),
('Psiquiatria')

GO


INSERT INTO Clinica(NomeClin,Endereco)
VALUES ('SpMedicalGroup',	'Av. Bar�o Limeira, 532, S�o Paulo, SP')
GO

INSERT INTO Medico(NomeMed,EmailMedico,IdClinica, IdEspecialidade, CNPJ, RazaoSocial, Endereco,CRM  )
VALUES ('Ricardo Lemos',	'ricardo.lemos@spmedicalgroup.com.br',	1,	2,	'54356-SP'),
('Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br',	1,	17,	),
('Helena Strada',	'helena.souza@spmedicalgroup.com.br',	1,	16,		'65463-SP')
GO


INSERT INTO Usuario(NomeUsu,Email,Senha,IdTipo)
VALUES ('Ligia',	'ligia@gmail.com',	'12345',	3), ('Alexandre',	'alexandre@gmail.com',	'123456',	3),('Fernando',	'fernando@gmail.com',	'1234567',	3),
('Henrique',	'henrique@gmail.com',	'13245',	3), ('Jo�o',	'joao@hotmail.com',	'132456',	3),
('Bruno',	'bruno@gmail.com',	'324567',	3), ('Mariana',	'mariana@outlook.com',	'142356',	3),
('Ricardo Lemos',	'ricardo.lemos@spmedicalgroup.com.br',	'1636362',	2), ('Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br',	'122787'	,2),
('Helena Strada',	'helena.souza@spmedicalgroup.com.br',	'191711',	2),('diego',	'diego@monstro.com',	'2425362',	1)
GO

INSERT INTO Paciente(Email, DataNascimento, Telefone, RG, CPF, Endereco,NomePac,IdUsuario)
VAlUES ('ligia@gmail.com',	'13/10/1983',	'11 3456-7654',	'43522543-5',	'94839859000',	'Rua Estado de Israel 240,�S�o Paulo, Estado de S�o Paulo, 04022-000',	'Ligia',	1),
('alexandre@gmail.com',	'23/07/2001',	'11 98765-6543',	'32654345-7',	'73556944057'	,'Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP, 01310-200',	'Alexandre',	2)
,('fernando@gmail.com',	'10/10/1978',	'11 97208-4453',	'54636525-3',	'16839338002',	'Av. Ibirapuera - Indian�polis, 2927,  S�o Paulo - SP, 04029-200',	'Fernando',	3)
,('henrique@gmail.com'	,'13/10/1985'	,'11 3456-6543'	,'54366362-5'	,'14332654765',	'R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP, 06402-030',	'Henrique',	4),
('joao@hotmail.com',	'27/08/1975',	'11 7656-6377',	'32544444-1',	'91305348010',	'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP 09405-380',	'Jo�o',	5)
,('bruno@gmail.com',	'21/03/1972',	'11 95436-8769',	'54566266-7',	'79799299004',	'Alameda dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP, 04524-001',	'Bruno',	6),
('mariana@outlook.com',	'05/03/2018',	'11 99999-9999',	'54566266-8',	'13771913039',	'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140',	'Mariana',	7)
GO

INSERT INTO Consulta(IdPaciente,IdMedico,DataConsulta,IdSituacao)
VALUES (1,	2,	'20/01/2020 15:00',	1),
(2,	3,	'06/01/2020 10:00',	2),
(3,	4,	'07/02/2020 11:00',	1),
(4,2,	'06/02/2018 10:00',	1),
(5,	3,	'07/02/2019 11:00',	2),
(6,	4,	'08/03/2020 15:00',	3),
(7,	3,	'09/03/2020 11:00',	3)
GO



















































































SELECT * FROM Consulta;
SELECT * FROM Medico;
SELECT * FROM Paciente;
SELECT * FROM Usuario;
SELECT * FROM TipoUsuario;
SELECT * FROM Clinica;
SELECT * FROM Especialidade;
