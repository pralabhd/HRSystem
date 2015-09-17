SELECT e1.first_name as Emp_first, e1.last_name as Emp_last,
e2.first_name as Mgr_first, e2.last_name as Mgr_last
FROM Person e1 
Left Outer JOIN Person e2
ON e1.mgr_id = e2.person_id
where 1=1 and e2.first_name = 'Jules' and e2.last_name = 'Smith';

Select * from Person;


Drop Procedure if exists Mgr_Name;

Delimiter //
Create Procedure Mgr_Name
(In fn varchar (30),
In ln varchar (30))
Begin
Declare strQuery varchar (500);
Declare strWhere varchar (500);
DECLARE strFinalQuery VARCHAR(1024);
Declare stmtp VARCHAR(1024);
Set @strQuery := 'SELECT e1.first_name as Emp_first, e1.last_name as Emp_last,
e2.first_name as Mgr_first, e2.last_name as Mgr_last
FROM Person e1 
Left Outer JOIN Person e2
ON e1.mgr_id = e2.person_id';
Set @strWhere := ' where 1 = 1 ';
If 
fn is not null
then
Set @strWhere:= CONCAT(@strWhere, ' and e2.first_name = ''', fn, ''' ' );
end if;
IF
ln is not Null
then
Set @strWhere:= CONCAT(@strWhere, ' and e2.last_name = ''', ln, ''' ' );
end if;
Set @strFinalQuery := CONCAT(@strQuery, @strWhere);
 #Select @strQuery, @strWhere;
 PREPARE  stmtp FROM  @strFinalQuery;
 EXECUTE  stmtp;
End //
Delimiter ;

Call Mgr_Name ('Jules','Smith');