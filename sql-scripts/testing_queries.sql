-- Consultas para listar dados úteis na base de dados

-- Listar pacientes e seus tratamentos:
SELECT P.name AS patient_name, T.treatment_type, T.start_date, T.outcome
FROM treatments T
JOIN patients P ON T.patient_id = P.patient_id;

-- Listar tratamentos e os membros do staff responsáveis:
SELECT P.name AS patient_name, S.name AS doctor_name, T.treatment_type, T.start_date, T.outcome
FROM treatments T
JOIN patients P ON T.patient_id = P.patient_id
JOIN staff S ON T.staff_id = S.staff_id;
