select emp_no, first_name, last_name from employees

select title, from_date, to_date from titles

select * from count_by_dept;
select * from current_emp;
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from emp_info;
select * from employees;
select * from retirement_info;
select * from salaries;

select * from titles;

drop table titles;

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);

select * from titles;

select emp_no, first_name, last_name from employees

select title, from_date, to_date from titles;

select emp_no, first_name, last_name
into retirement_titles
from employees

select * from retirement_titles
drop table retirement_titles

select emp_no, first_name, last_name from employees and
select title, from_date, to_date from titles;

select * from retirement_info;
select * from titles;

select employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	titles.title,
	titles.from_date,
	titles.to_date
into retirement_titles
from employees
join titles
on employees.emp_no = titles.emp_no
where birth_date between '1952-01-01' and '1955-12-31'

select * from retirement_titles

select count (emp_no) from retirement_titles

alter table retirement_titles
drop column birth_date;
______________________________________________________________

--- challenge starter code
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

________________________________________________________________

select emp_no, first_name, last_name 
from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select * from unique_titles

-- number of employees about to retire
select count (emp_no) from unique_titles
--90,398. (number of all rows)

--retrieve number of unique titles (failed)
select distinct title from unique_titles
--returns list of 7 unique title names

--retrieve number of unique titles (failed)
select count (distinct title) from unique_titles
-- returns just the number 7

--retrieve number of unique titles
select count (title), title
into retiring_titles
from unique_titles
group by unique_titles.title
order by count desc

select * from retiring_titles

--------------------------------------------------------

-- del 2, employees eligible for mentorship program
-- create mentorship eligibility table 
-- current employees born 1/1/65 - 12/31/65

select emp_no, first_name, last_name, birth_date
from employees

select from_date, to_date from dept_emp

select title from titles

--employees eligible for mentorship program
select  distinct on (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
into mentorship_eligibility
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles
on e.emp_no = titles.emp_no
where birth_date between '1965-01-01' and '1965-12-31'
and de.to_date = ('9999-01-01')
ORDER BY emp_no;

--------------------------------------------------------------
--employees eligible for mentorship program 
--reconfigured by time with company (10 yrs)
select  distinct on (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
into mentorship_eligibility2
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles
on e.emp_no = titles.emp_no
where de.from_date between '1965-01-01' and '2001-12-31'
and de.to_date = ('9999-01-01')
ORDER BY emp_no;

select count (emp_no) from mentorship_eligibility2

select count (emp_no) from mentorship_eligibility