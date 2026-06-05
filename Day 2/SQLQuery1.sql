create database Day2;

use Day2;

CREATE TABLE employee (     
emp_id INT,first_name 
VARCHAR(50),last_name 
VARCHAR(50),gender 
VARCHAR(10),department 
VARCHAR(50),position 
VARCHAR(50),salary 
DECIMAL(10,2),join_date 
DATE  
);

INSERT INTO employee VALUES   
(1, 'John', 'Doe', 'Male', 'IT', 'Developer', 60000.00, '2022-01-10'),  
(2, 'Jane', 'Smith', 'Female', 'HR', 'Manager', 75000.00, '2021-03-15'),  
(3, 'Bob', 'Brown', 'Male', 'Finance', 'Analyst', 58000.00, '2020-07-20'),  
(4, 'Alice', 'Johnson', 'Female', 'Marketing', 'Executive', 62000.00, '2022-05-18'),  
(5, 'David', 'Lee', 'Male', 'IT', 'Tester', 50000.00, '2023-02-22'),  
(6, 'Emma', 'Wilson', 'Female', 'HR', 'Recruiter', 48000.00, '2022-11-30'),  
(7, 'Michael', 'Clark', 'Male', 'Finance', 'Manager', 82000.00, '2019-09-10'),  
(8, 'Olivia', 'Lopez', 'Female', 'IT', 'Developer', 61000.00, '2023-04-04'),  
(9, 'Daniel', 'Lewis', 'Male', 'Marketing', 'Designer', 55000.00, '2021-08-14'),  
(10, 'Sophia', 'Hall', 'Female', 'IT', 'Support', 47000.00, '2020-12-25'),  
(11, 'Liam', 'Young', 'Male', 'HR', 'Coordinator', 49000.00, '2023-01-05'),  
(12, 'Isabella', 'King', 'Female', 'Finance', 'Accountant', 56000.00, '2021-10-01'),  
(13, 'Noah', 'Scott', 'Male', 'IT', 'Architect', 95000.00, '2018-06-17'),  
(14, 'Mia', 'Green', 'Female', 'Marketing', 'Strategist', 68000.00, '2022-03-27'),  
(15, 'Ethan', 'Adams', 'Male', 'Finance', 'Intern', 35000.00, '2024-01-10'),  
(16, 'Ava', 'Baker', 'Female', 'IT', 'Intern', 36000.00, '2024-03-15'),  
(17, 'James', 'Nelson', 'Male', 'HR', 'Trainer', 54000.00, '2020-04-20'),  
(18, 'Charlotte', 'Carter', 'Female', 'Marketing', 'Executive', 60000.00, '2019-11-11'),  
(19, 'Benjamin', 'Mitchell', 'Male', 'Finance', 'Consultant', 88000.00, '2021-05-07'), 
(20, 'Amelia', 'Perez', 'Female', 'IT', 'Developer', 63000.00, '2023-07-01'); 

select * from employee;

-- 1. Select all employees from the IT department.
SELECT * from employee where department = 'IT';
-- 2. Get employees whose salary is more than 60,000.
SELECT * FROM employee WHERE salary > 60000;
-- 3. List employees who joined before 2022. 
SELECT * FROM employee WHERE join_date < '2022-01-01';
-- 4. Find employees with position = 'Developer'.  
SELECT * FROM employee WHERE position = 'Developer';
-- 5. Show employees whose gender is 'Male'.  
SELECT * FROM employee WHERE gender = 'Male';
-- 6. Get employees from the HR department.  
SELECT * FROM employee WHERE department = 'HR';
-- 7. Select employees with salary between 50,000 and 70,000. 
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000;
-- 8. List employees not in the Finance department.  
SELECT * FROM employee WHERE department != 'Finance';
-- 9. Retrieve employees who joined in 2023.
SELECT * FROM employee WHERE YEAR(join_date) = 2023;
-- 10. Show employees whose first name starts with 'J'.  
SELECT * FROM employee WHERE first_name LIKE 'J%';
-- 11. Find employees whose last name ends with 'n'.  
SELECT * FROM employee WHERE last_name LIKE '%n';
-- 12. Get all employees where salary is less than 40,000.  
SELECT * FROM employee WHERE salary < 40000;
-- 13. Select employees where salary is not equal to 60,000.  
SELECT * FROM employee WHERE salary != 60000;
-- 14. List employees where position is either 'Manager' or 'Developer'.  
SELECT * FROM employee WHERE position = 'Manager' OR position = 'Developer';
-- 15. Get all employees who joined after '2022-01-01' and have a salary > 60,000.
SELECT * FROM employee WHERE join_date > '2022-01-01' AND salary > 60000;
-- 16. Find employees from departments 'IT', 'HR', or 'Finance' using IN.
SELECT * FROM employee WHERE department IN ('IT', 'HR', 'Finance');
-- 17. Select employees not from departments 'Marketing' and 'HR'. 
SELECT * FROM employee WHERE department NOT IN ('Marketing', 'HR');
-- 18. Get employees whose first name contains the letter 'a'.  
SELECT * FROM employee WHERE first_name LIKE '%a%';
-- 19. Show employees whose position is not 'Intern'.
SELECT * FROM employee WHERE position != 'Intern';
-- 20. List employees who joined between '2020-01-01' and '2022-12-31'.  
SELECT * FROM employee WHERE join_date BETWEEN '2020-01-01' AND '2022-12-31';
-- 21. Find employees whose salary is not between 50,000 and 70,000.  
SELECT * FROM employee WHERE salary NOT BETWEEN 50000 AND 70000;
-- 22. Select employees who joined in 2023 and are from the IT department.
SELECT * FROM employee WHERE YEAR(join_date) = 2023 AND department = 'IT';
-- 23. Retrieve employees whose salary is >= 60,000 and position = 'Developer'.
SELECT * FROM employee WHERE salary >= 60000 AND position = 'Developer';
-- 24. Find employees with last names that have exactly 5 characters. 
SELECT * FROM employee WHERE last_name LIKE '_____';
-- 25. Show employees whose first name starts with 'A' or ends with 'e'.
SELECT * FROM employee WHERE first_name LIKE 'A%' OR first_name LIKE '%e';
-- 26. List employees whose department is 'Marketing' and salary < 60,000. 
SELECT * FROM employee WHERE department = 'Marketing' AND salary < 60000;
-- 27. Get employees where salary is > 50,000 OR department = 'HR'. 
SELECT * FROM employee WHERE salary > 50000 OR department = 'HR';
-- 28. Find employees whose position is 'Executive' and joined before '2021-01-01'.
SELECT * FROM employee WHERE position = 'Executive' AND join_date < '2021-01-01';
-- 29. Select employees who are not from 'Finance' and salary is above 55,000.  
SELECT * FROM employee WHERE department != 'Finance' AND salary > 55000;
-- 30. Get all employees whose position contains the word 'Manager' using LIKE.  
SELECT * FROM employee WHERE position LIKE '%Manager%';
-- 31. Find employees whose name starts with the same letter as their last name.
SELECT * FROM employee WHERE LEFT(first_name, 1) = LEFT(last_name, 1);
-- 32. Get employees who joined in the last 2 years and are not Interns. 
SELECT * FROM employee WHERE join_date >= DATEADD(YEAR, -2, GETDATE()) AND position <> 'Intern';
-- 33. Select employees whose department is 'IT' or 'Finance' but not 'HR'.  
SELECT * FROM employee WHERE (department = 'IT' OR department = 'Finance') AND department != 'HR';
-- 34. List employees who joined on “27-12-2024”  
SELECT * FROM employee WHERE join_date = '2024-12-27';
-- 35. Retrieve employees whose salary is between 50,000 and 70,000 excluding 60,000.  
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000 AND salary != 60000;
-- 36. Find employees where first name does not contain vowels. 
SELECT * FROM employee WHERE first_name NOT LIKE '%a%' AND first_name NOT LIKE '%e%' AND first_name NOT LIKE '%i%' AND first_name NOT LIKE '%o%' AND first_name NOT LIKE '%u%';
-- 37. Get employees where either: department is IT and salary > 60,000 or department is HR and joined after 2022 
SELECT * FROM employee WHERE (department = 'IT' AND salary > 60000) OR (department = 'HR' AND join_date > '2022-01-01');
-- 38. Select employees with position = 'Manager' or (salary > 80,000 and not in IT). 
SELECT * FROM employee WHERE position = 'Manager' OR (salary > 80000 AND department != 'IT');
-- 39. Find employees whose join date is not between '2021-01-01' and '2023-12-31'. 
SELECT * FROM employee WHERE join_date NOT BETWEEN '2021-01-01' AND '2023-12-31';
-- 40. Get employees where position is in ('Executive', 'Strategist') and salary < 65,000 OR joined before '2020-01-01'. 
SELECT * FROM employee WHERE (position IN ('Executive', 'Strategist') AND salary < 65000) OR join_date < '2020-01-01';