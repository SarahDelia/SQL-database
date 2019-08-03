-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/4L9EaS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" varchar(25)   NOT NULL,
    "dept_name" varchar(45)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(25)   NOT NULL,
    "from_date" varchar(25)   NOT NULL,
    "to_date" varchar(25)   NOT NULL
);

CREATE TABLE "Department_Managers" (
    "dept_no" varchar(25)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" varchar(25)   NOT NULL,
    "to_date" varchar(25)   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" varchar(25)   NOT NULL,
    "first_name" varchar(45)   NOT NULL,
    "last_name" varchar(45)   NOT NULL,
    "gender" varchar(5)   NOT NULL,
    "hire_date" varchar(25)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" varchar(25)   NOT NULL,
    "to_date" varchar(25)   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(25)   NOT NULL,
    "from_date" varchar(25)   NOT NULL,
    "to_date" varchar(25)   NOT NULL
);

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

