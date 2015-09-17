Drop procedure if exists insertEmpDetails;
Delimiter //
Create Procedure insertEmpDetails (IN fn varchar (30),
IN ln varchar(30),
IN aem varchar (40),
IN aSal int,
IN al1 varchar(30),
IN al2 varchar(30),
IN aCity varchar(30),
IN aState varchar(30),
IN aZip varchar (30))
Begin
declare pID int;
Select person_id into pID From HR.Employee where Email = aem;
If pID is NOT NULL
then
delete from HR.Address where person_ID = pID;
delete from HR.Salary where person_ID = pID;
delete from HR.Employee where person_ID = pID;
end if;
select max(person_id)+1 into pID from HR.Employee;
insert into HR.Employee (person_id, first_name, last_name, Email)
values (pID, fn, ln, aem);
insert into HR.Salary (person_id, salary, eff_date)
values (pID, aSal, NOW());
insert into HR.Address (person_id, addr_line1, addr_line2, city, state, zip_code, start_date, status)
values (pID, al1, al2, acity, aState, aZip, NOW(), 'A');
End //
Delimiter ;


