Drop table if exists Dev.Person;

Create table Dev.Person
(person_id int NOT Null,
  first_name varchar (30),
  last_name varchar (30),
  email varchar (40) unique,
  person_type enum ('E', 'C') Not Null,
  Primary Key(person_id));
  
Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70001, 'E', 'Jules', 'Smith', 'jsmith@aaa.com');
  
Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70002, 'E', 'John', 'Tribiani', 'jtribiani@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70003, 'E', 'Ron', 'Smith', 'rsmith@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70004, 'E', 'Louie', 'Le Blanc', 'lleblanc@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70005, 'E', 'Monica', 'Gibber', 'mgibber@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70006, 'E', 'Joey', 'Tavolocci', 'jtavolloci@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70007, 'E', 'Rani', 'Dixit', 'rdixit@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70008, 'E', 'Aamir', 'Khan', 'akhan@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70009, 'E', 'Jennifer', 'Schull', 'jschull@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70010, 'E', 'Tom', 'McGill', 'tmcgill@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (70011, 'E', 'Lola', 'Tufts', 'ltufts@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90001, 'C', 'Layla', 'Ahmad', 'lahmad@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90002, 'C', 'Ronnie', 'Kapoor', 'rkapoor@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90003, 'C', 'Donald', 'McGill', 'dmcgill@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90004, 'C', 'Ram', 'Prasad', 'rprasad@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90005, 'C', 'Rani', 'Mukherjee', 'rmukherjee@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90006, 'C', 'Mike', 'McGreat', 'mmcgreat@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90007, 'C', 'Molly', 'Trump', 'mtrump@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90008, 'C', 'Mary', 'Weber', 'mweber@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90009, 'C', 'Mary Ann', 'Bush', 'mbush@aaa.com');

Insert into Dev.Person
(person_id, person_type, first_name, last_name, email)
Values (90010, 'C', 'Sanjay', 'Kumar', 'skumar@aaa.com');
