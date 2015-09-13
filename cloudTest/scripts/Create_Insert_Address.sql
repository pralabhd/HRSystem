Drop table if exists Address;

Create table Address
(person_id int NOT NUll, 
addr_line1 varchar (30), 
addr_line2 varchar (30), city varchar (20), 
state varchar (3), 
zip_code int, 
start_date date, 
end_date date, 
status varchar (6),
primary key (person_id, start_date),
Foreign Key (person_id)
References Person (person_id));

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70001, '24 Shady Lane', Null,'Oakville', 'CA', 22222, str_to_date('2014-01-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70001, '52 Marshall Lane', 'Apt. 2','Medford', 'MA', 01533, str_to_date('2012-01-01', '%Y-%m-%d'), str_to_date ('2014-01-14', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70002, '38 Tree Lane', 'Apt. 3','Natick', 'MA', 01544, str_to_date ('2010-06-01', '%Y-%m-%d'), str_to_date ('2014-05-31', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70002, '3356 Carlton Ave', Null,'San Jose', 'CA', 33333, str_to_date ('2014-01-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70003, '33 Campden Ave', Null, 'San Jose', 'CA', 33433, str_to_date ('2014-07-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70004, '56 Cheesetown Ave', Null,'Los Gatos', 'CA', 22233, str_to_date ('2013-06-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70004, '23 Shady Ln', Null,'Somerville', 'MA', 01533, str_to_date ('2012-01-01', '%Y-%m-%d'), str_to_date ('2013-06-14', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70005, '56 Carlton Ave', Null,'San Jose', 'CA', 33333, str_to_date ('2014-12-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70005, '22 Rolle Ave', 'Apt. 2','Waltham', 'MA', 01522, str_to_date ('2012-12-01', '%Y-%m-%d'), str_to_date ('2014-11-30', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70006, '4 Cat Lane', 'Apt. 55','Sunnyvale', 'CA', 33555, str_to_date ('2015-05-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70007, '6 Bunny Ave', '#22','San Jose', 'CA', 33333, str_to_date ('2014-04-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70008, '33 Pickle Ln', Null,'Cupertino', 'CA', 34443, str_to_date ('2013-11-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70008, '2 Change Lane', 'Apt. 5','Ashland', 'MA', 02233, str_to_date ('2012-11-01', '%Y-%m-%d'), str_to_date ('2013-10-31', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70009, '56 Carlton Ave', Null,'San Jose', 'CA', 33333, str_to_date ('2014-01-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70009, '61 Chine Ave', Null,'Framingham', 'MA', 01566, str_to_date ('2012-01-01', '%Y-%m-%d'), str_to_date ('2014-01-14', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70010, '66 Kitty Ln', Null,'Los Gatos', 'CA', 34433, str_to_date ('2013-01-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (70011, '88 Carl St', Null,'San Jose', 'CA', 22233, str_to_date ('2011-02-15', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90001, '456 Wayside Ln', Null,'San Jose', 'CA', 28833, str_to_date ('2015-02-28', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90002, '336 Waverley Ln', Null,'Los Gatos', 'CA', 28833, str_to_date ('2015-04-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90002, '44 Marsh St', 'Apt. 2','Wellesley', 'MA', 01566, str_to_date ('2012-04-01', '%Y-%m-%d'), str_to_date ('2015-03-31', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90003, '98 Georgie Ln', Null,'Sunnyvale', 'CA', 44433, str_to_date ('2015-07-03', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90004, '6 Kitten Ln', Null,'Cupertino', 'CA', 28843, str_to_date ('2015-03-06', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90005, '78 Chloe Rd', Null,'San Jose', 'CA', 42233, str_to_date ('2011-06-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90004, '23 Hero St', 'Apt. 5','Riverside', 'MA', 02366, str_to_date ('2012-04-01', '%Y-%m-%d'), str_to_date ('2015-03-05', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90006, '334 Troy St', Null,'Los Gatos', 'CA', 27733, str_to_date ('2012-05-31', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90006, '44 Tiny St', Null,'Worcestor', 'MA', 01544, str_to_date ('2010-04-01', '%Y-%m-%d'), str_to_date ('2012-05-30', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90007, '45 Rightside St', Null,'Sunnyvale', 'CA', 28443, str_to_date ('2014-10-09', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90007, '78 Riverly St', 'Apt. 2','Norton', 'MA', 01446, str_to_date ('2012-10-01', '%Y-%m-%d'), str_to_date ('2014-10-08', '%Y-%m-%d'), 'I');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90008, '6 Toledo Rd', 'Apt. 3','Cupertino', 'CA', 58833, str_to_date ('2015-03-05', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90009, '18885 Lolita Rd', Null,'Saratoga', 'CA', 25553, str_to_date ('2011-11-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90010, '788 Tome Ln', Null,'San Jose', 'CA', 28563, str_to_date ('2015-07-01', '%Y-%m-%d'), Null, 'A');

Insert into Address
(person_id, addr_line1, addr_line2, city, state, zip_code, start_date, end_date, status)
Values (90010, '90 Dil St', 'Apt. 2','Wellesley', 'MA', 01566, str_to_date ('2012-07-01', '%Y-%m-%d'), str_to_date ('2015-06-30', '%Y-%m-%d'), 'I');