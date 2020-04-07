create table tblind
(
ID int primary key,
Name nvarchar(20),
Email nvarchar(20)
)

insert into tblind values (1, 'Raj' ,'R@R.com')
insert into tblind values (2, 'Sam' ,'S@S.com')

create table tbluk
(
ID int primary key,
Name nvarchar(20),
Email nvarchar(20)
)

insert into tbluk values (1, 'Ben' ,'B@B.com')
insert into tbluk values (2, 'Sam' ,'S@S.com')

select * from tblind
Union All
select * from tbluk