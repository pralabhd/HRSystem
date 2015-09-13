Drop View Person_Details_View;

CREATE VIEW Person_Details_View AS
SELECT Person.person_id, Person.first_name, Person.last_name, Salary.salary, Salary.eff_date,
Address.addr_line1, Address.addr_line2, Address.city, Address.state, Address.zip_code, 
Address.start_date, Address.end_date, Address.status
FROM Person, Salary, Address
WHERE Person.person_id = Salary.person_id And Person.person_id = Address.person_id
Order by Person.last_name, Person.first_name, Address.start_date DESC;