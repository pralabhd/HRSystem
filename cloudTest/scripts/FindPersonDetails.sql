Drop procedure if exists FindPersonDetails;

Delimiter //
CREATE PROCEDURE `FindPersonDetails`
(IN fn varchar (30),
IN ln varchar(30),
IN aem varchar (40),
IN MinSal int,
IN MaxSal int,
IN aCity varchar(30),
IN aState varchar(30))
Begin
DECLARE strQuery VARCHAR(1024);
DECLARE strWhere  VARCHAR(1024);
DECLARE strFinalQuery VARCHAR(1024);
Declare stmtp VARCHAR(1024);
Declare strOrder varchar (1024);
Set @strQuery := 'Select Person.person_id, Person.first_name, Person.last_name, Person.email, Salary.salary, Salary.eff_date,
Address.addr_line1, Address.addr_line2, Address.city, Address.state, Address.zip_code,
Address.start_date, Address.end_date, Address.status
FROM Person, Salary, Address '; 
Set @strWhere:= ' where Dev.Person.person_id = Dev.Address.person_id and Dev.Person.person_id = Dev.Salary.person_id ';
Set @strOrder:= ' order by ';
If
fn Is Not Null  
then 
Set @strWhere:= CONCAT(@strWhere, ' and Person.first_name = ''', fn, ''' ' );
Set @strOrder:= Concat(@strOrder, ' Person.first_name, ');
end if;
IF
ln is not Null
then
Set @strWhere:= CONCAT(@strWhere, ' and Person.last_name = ''', ln, ''' ' );
Set @strOrder:= Concat(@strOrder, ' Person.last_name, ');
end if;
If 
aem Is Not Null
then
Set @strWhere:= CONCAT(@strWhere, ' and Person.email = ''', aem, ''' ' );
end if;
If 
MinSal and MaxSal is not Null
then
Set @strWhere:= CONCAT(@strWhere, ' and Salary.salary Between ', MinSal, ' and ', MaxSal , ' ' );
Set @strOrder:= Concat(@strOrder, ' Salary.salary, ');
end if;
If
aCity is not Null
then
Set @strWhere:= CONCAT(@strWhere, ' and Address.city = ''', aCity, ''' ' );
end if;
If 
aState is not null
then
Set @strWhere:= CONCAT(@strWhere, ' and Address.state = ''', aState, ''' ' );
Set @strOrder:= Concat(@strOrder, ' Address.state, ');
end if;

#Plug order by clause
Set @strOrder:= Concat(@strOrder, ' Salary.Eff_date ');

Set @strFinalQuery := CONCAT(@strQuery, @strWhere, @strOrder);
 #Select @strQuery, @strWhere, @strOrder;
 PREPARE  stmtp FROM  @strFinalQuery;
 EXECUTE  stmtp;
End //
Delimiter ;

#Call FindPersonDetails ('Amit', 'Singh', null, null, null, Null, Null); 

Call FindPersonDetails (null, null, null, 70000, 150000, Null, Null); 