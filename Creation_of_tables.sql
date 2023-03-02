CREATE TABLE IF NOT EXISTS Departments (
	id SERIAL PRIMARY KEY,
	department_name VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(60) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES Departments (id)
);

CREATE TABLE IF NOT EXISTS head_of_department (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employee (id),
	department_id INTEGER NOT NULL REFERENCES Departments (id)
);