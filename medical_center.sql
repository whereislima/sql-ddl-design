CREATE TABLE doctors {
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  speciality TEXT,
}

CREATE TABLE patients {
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  date_of_birth DATE
}

CREATE TABLE visits {
  id SERIAL PRIMARY KEY,
  date DATE,
  doctor_id REFERENCES doctors,
  patient_id REFERENCES patients,
  diagnosis_id REFERENCES diagnosis,
}

CREATE TABLE diagnosis {
  id SERIAL PRIMARY KEY,
  visit_id REFERENCES visits,
  disease_id REFERENCES diseases,
}

CREATE TABLE diseases {
  id SERIAL PRIMARY KEY,
  disease_name TEXT,
  disease_description TEXT,
}