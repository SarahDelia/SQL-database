select
"Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Employees"."gender",
"Salaries"."salary"

from "Employees"

join "Salaries" on "Employees"."emp_no" = "Salaries"."emp_no"



select
"Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Employees"."hire_date"

from "Employees"

where "hire_date"
like '1986%'



select
"Department_Managers"."dept_no",
"Departments"."dept_name",
"Department_Managers"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Department_Managers"."from_date",
"Department_Managers"."to_date"

from "Departments"

join "Department_Managers" on "Departments"."dept_no" = "Department_Managers"."dept_no"
join "Employees" on "Department_Managers"."emp_no" = "Employees"."emp_no"



select
"Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Departments"."dept_name"

from "Employees"

join "Department_Managers" on "Employees"."emp_no" = "Department_Managers"."emp_no"
join "Departments" on "Department_Managers"."dept_no" = "Departments"."dept_no"



select
"Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name"

from "Employees"

where "last_name"
like 'B%' and "first_name" = 'Hercules'



select
"Department_Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Departments"."dept_name"

from "Departments"

join "Department_Employees" on "Departments"."dept_no" = "Department_Employees"."dept_no"
join "Employees" on "Department_Employees"."emp_no" = "Employees"."emp_no"

where "dept_name" = 'Sales'



select
"Department_Employees"."emp_no",
"Employees"."last_name",
"Employees"."first_name",
"Departments"."dept_name"

from "Departments"

join "Department_Employees" on "Departments"."dept_no" = "Department_Employees"."dept_no"
join "Employees" on "Department_Employees"."emp_no" = "Employees"."emp_no"

where "dept_name" = 'Sales' or "dept_name" = 'Development'



select
"Employees"."last_name", count("last_name") as last_name_count

from
"Employees"

group by "last_name"
order by last_name_count desc;