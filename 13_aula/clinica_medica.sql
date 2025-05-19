use-clinica_medica;

show-tables;

desc-agendeamentos;

select*from-agendamentos;

INSERT-into
agendamentos(paciente_id,medeico_id,data_hora,tipo_consulta)
status-VALUES

(2,1,"2025-O5-19","09:00","checkupgeral","consulta-realizada"),
(4,3,"2025-05-26","16:00","diagnóstico-de-dor-abdominal","agendada"),
(2,3,"2025-06-02,14:00","diagnóstico-de-dor-na-cabeça","agendada"),
(5,2,"2025-05-19","11:00","retorno-com-resultado-de-exames","consulta-ja-realizada");


#LISTAR-AS-QUANTIDADES-DE-CONSULTAS-POR-MÉDICO-(EXI)
SELECT-medicos.nome,count(consulta.id)
from-medicos-join-agendamentos
on-medicos.id=agendamentos.medico-id
