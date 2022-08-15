CREATE TABLE IF NOT EXISTS Departments (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT null,
	Department_id INTEGER references Departments(id)
);

alter TABLE Employees ADD Boss_id INTEGER references employees(id);
