# sql-challenge

A research project about people whom the company, Pewlett Hackard employed during the 1980s and 1990s. Historical Employee database has only six CSV files from that period.

For this project,  I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then performed data analysis.


## Acknowledgements

 - Data generated by Mockaroo, LLCLinks to an external site., (2022). Realistic Data Generator.


## ERD Screenshot

Mod9Challenge ERD diagram generated on https://app.quickdatabasediagrams.com/



## Database Schema Generation 

- Mod9Challenge_Schema sql file - schema based on the Mod9Challenge ERD  

CREATE TABLE commands for tables named as, Title, Employee, Department, Dept_Emp, Dept_Mgr, and Salary.

It also includes the following information: 

- Datatypes for columns defined along with constraints
- Primary keys for all 6 tables  
- Foreign Keys for Dept_Emp, Dept_Mgr, Employee, Salary tables
- Composite key for Dept_Emp table
- NOT NULL Constraints for specific table columns

## Manual CSV Import using Postgres IMPORT/EXPORT Feature

All the 6 table columns were populated with the data in the corresponding CSV file shared as part of the Starter Code for Module 9 Challenge  

## Query Document

Included is the sql file with postgres query statements for Data Analysis covering the questions below:


- List the employee number, last name, first name, sex, and salary of each employee  
- List the first name, last name, and hire date for the employees who were hired in 1986  
- List the manager of each department along with their department number, department name, employee number, last name, and first name  
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name  
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B  
- List each employee in the Sales department, including their employee number, last name, and first name  
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name  
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)  
