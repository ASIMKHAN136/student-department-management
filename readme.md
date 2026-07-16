# School Database (SQL Project)

A relational database project built in MySQL, modeling a school system 
with departments and students.

## Database: school3

## Tables (2 total)

### 1. departments
Stores information about each academic department.

| Column      | Type        | Description              |
|-------------|-------------|---------------------------|
| dept_id     | INT (PK)    | Unique department ID      |
| dept_name   | VARCHAR(50) | Name of the department    |
| head_name   | VARCHAR(50) | Head of department        |
| total_seats | INT         | Total seats available     |
| location    | VARCHAR(50) | Block/location             |

Contains 5 sample departments: Computer Science, Mathematics, Physics, English, Chemistry.

### 2. students
Stores student records, linked to departments.

| Column     | Type         | Description                        |
|------------|--------------|-------------------------------------|
| student_id | INT (PK)     | Unique student ID                   |
| name       | VARCHAR(50)  | Student name                        |
| age        | INT          | Student age                         |
| city       | VARCHAR(50)  | City of residence                   |
| marks      | INT          | Marks obtained                      |
| dept_id    | INT (FK)     | References departments(dept_id)     |
| email      | VARCHAR(100) | Student email                       |
| gender     | VARCHAR(10)  | Male/Female                         |

Contains 12 sample students, each linked to a department.


## Queries Included

Beyond table creation, this project includes SQL queries demonstrating:

- **Filtering**: WHERE, AND, OR, BETWEEN, LIKE
- **Sorting**: ORDER BY (ascending/descending), LIMIT
- **Joins**: INNER JOIN between students and departments
- **Grouping & Aggregates**: GROUP BY with MAX, MIN, AVG, COUNT
- **HAVING**: filtering grouped results
- **Updates & Deletes**: UPDATE and DELETE examples

### Example queries
```sql
-- Join students with their department
SELECT s.name, d.dept_name 
FROM students s 
INNER JOIN departments d ON s.dept_id = d.dept_id;

-- Average marks by gender
SELECT gender, AVG(marks) 
FROM students 
GROUP BY gender;

-- Top 5 students by marks
SELECT * FROM students 
ORDER BY marks DESC 
LIMIT 5;
```