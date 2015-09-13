Drop table if exists Salary;

Create table Salary
(person_id int,
salary int,
eff_date date,
primary key (person_id, eff_date),
Foreign Key (person_id)
References Person (person_id));

Insert into Salary
(person_id, salary, eff_date)
Values (70001, 150000, str_to_date ('2010-01-15', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70002, 100000, str_to_date ('2008-04-11', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70003, 75000, str_to_date ('2011-12-15', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70004, 175000, str_to_date ('2010-01-06', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70005, 100000, str_to_date ('2006-07-15', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70006, 250000, str_to_date ('2015-01-30', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70007, 150000, str_to_date ('2011-10-15', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70008, 200000, str_to_date ('2014-11-18', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70009, 180000, str_to_date ('2013-10-29', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70010, 120000, str_to_date ('2009-05-19', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (70011, 80000, str_to_date ('2000-02-06', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values(90001, 50000, str_to_date ('2013-01-11', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values(90002, 70000, str_to_date ('2014-03-03', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (90003, 60000, str_to_date ('2012-04-21', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (90004, 75000, str_to_date ('2013-06-11', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (90005, 65000, str_to_date ('2012-06-17', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (90006, 54000, str_to_date ('2015-04-09', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values(90007, 100000, str_to_date ('2015-06-16', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values(90008, 80000, str_to_date ('2013-09-05', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values(90009, 83000, str_to_date ('2014-07-19', '%Y-%m-%d'));

Insert into Salary
(person_id, salary, eff_date)
Values (90010, 95000, str_to_date ('2015-02-11', '%Y-%m-%d'));