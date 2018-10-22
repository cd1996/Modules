select * from Staff_Master;
select * from Department_master;
select staff.staff_name,staff.salary,dept.Dept_code,dept.dept_name
from staff_master staff inner join Department_master dept
on staff.Dept_Code=dept.Dept_code where staff.salary>20000

select staff.staff_name,dept.Dept_code,dept.dept_name
from staff_master staff inner join Department_master dept
on staff.Dept_Code=dept.Dept_code where dept.Dept_code!=10

select * from Book_Master
select * from Book_Transaction

select book.Book_Name,count(transact.book_code) as [no times isuued]
from Book_Master book inner join Book_Transaction transact
on book.Book_code=transact.Book_code 
group by book_name


