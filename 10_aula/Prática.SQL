use clinica_medica;
show tables;
desc pacientes;
select * from pacientes;
select  * from medicos;
select * from agendamentos;

-- LISTA OS PACIENTES NASCIDOS DEPOIS DE 01/01/1990
select nome, data_nascimento,telefone from pacientes
where data_nascimento > "1990-01-01";

-- LISTAR PARA CADA CONSULTA, O NOME DO PACIENTE, DATA E TIPO DE CONSULTA.
SELECT pacientes.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from pacientes left join agendamentos 
on pacientes.id = agendamentos.paciente_id;

-- LISTA PARA CADA CONSULTA, O NOME DO MÉDICO, DATA E TIPO.alter
SELECT medicos.nome, agendamentos.datah_hora, agendamentos.tipo_consulta
from medicos left join agendamentos
on medicos.id = agendamentos.medico_id;

-- DESAFIO: LISTAR AS CONSULTAS INCLUINDO O NOME DO PACIENTE E DO MÉDICO
SELECT pacientes.nome, medicos.nome, agendamentos.datah_hora,
agendamentos.tipo_consulta from pacientes join agendamentos
 on pacientes.id  = agendamentos.paciente_id join medicos
medicos.id = agendamentos.medico_id;
on  pacientes.id = agendamentos.paciente_id;

SELECT 









