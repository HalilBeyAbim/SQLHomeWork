create table books(id int primary key identity,
[Name] nvarchar (100) check (len( [Name])>2),
[Pagecount] int check ([Pagecount]>10))

create table authors (id int primary key identity,
[Name] nvarchar (25),
[Surname] nvarchar (30))

alter table books
add Author_Id int foreign key references authors(Id)