-- Cria as tabelas do banco

-- Tabela de pacientes:
CREATE TABLE patients (
  patient_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  birth_date DATE,
  admission_date DATE,
  issue VARCHAR(100),
  expected_stay INTERVAL,
  status VARCHAR(50)
);

-- Tabela de staff:
CREATE TABLE staff (
  staff_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  position VARCHAR(50),
  hire_date DATE
);

-- Tabela de specialized_staff:
  CREATE TABLE specialized_staff (
  specialization VARCHAR(100)
) INHERITS (staff); -- A tabela 'specialized_staff' irá herdar da tabela 'staff'

-- Tabela de treatments:
CREATE TABLE treatments (
  treatments_id SERIAL PRIMARY KEY,
  patients_id INT REFERENCES patients(patient_id) ON DELETE CASCADE,
  staff_id INT REFERENCES staff(staff_id) ON DELETE CASCADE,
  start_date DATE,
  end_date DATE,
  treatment_type VARCHAR(100),
  outcome TEXT
);
-- A tabela treatments terá duas chaves estrangeiras que servem de link para tanto a tabela de 
-- staff quanto de pacientes(informando qual staff cuida de qual paciente e com qual tratamento)
