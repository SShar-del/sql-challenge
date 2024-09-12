CREATE TABLE "Title" (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "Employee" (
    "emp_no" VARCHAR(10)   NOT NULL,
    "emp_title_id" VARCHAR(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     ),
    CONSTRAINT "fk_Employee_emp_title_id" FOREIGN KEY("emp_title_id")
        REFERENCES "Title" ("title_id") 
);



CREATE TABLE "Department" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" VARCHAR(10)   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "emp_no","dept_no"
     ),
    CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
        REFERENCES "Employee" ("emp_no"),
    CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
        REFERENCES "Department" ("dept_no")
);

CREATE TABLE "Dept_Mgr" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Dept_Mgr" PRIMARY KEY (
        "emp_no"
     ),
    CONSTRAINT "fk_Dept_Mgr_dept_no" FOREIGN KEY("dept_no")
        REFERENCES "Department" ("dept_no"),
    CONSTRAINT "fk_Dept_Mgr_emp_no" FOREIGN KEY("emp_no")
        REFERENCES "Employee" ("emp_no")
);


CREATE TABLE "Salary" (
    "emp_no" VARCHAR(10)   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "emp_no"
     ),
    CONSTRAINT "fk_Salary_emp_no" FOREIGN KEY("emp_no")
        REFERENCES "Employee" ("emp_no") 
);



