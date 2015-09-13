Create table Employee
  (person_id int NOT Null,
  first_name varchar (30),
  last_name varchar (30),
  primary key (person_id));
 
Create table Consultant
  (person_id int NOT Null,
  first_name varchar (30),
  last_name varchar (30),
  primary key (person_id));

Create table Salary
(person_id int,
salary int,
eff_date date,
primary key (person_id, eff_date));

Create table Address
(person_id int NOT NUll, 
addr_line1 varchar (30), 
addr_line2 varchar (30), city varchar (20), 
state varchar (3), 
zip_code int, 
start_date date, end_date date, 
status varchar (6),
primary key (person_id, start_date));