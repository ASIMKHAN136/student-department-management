create database school3;
use school3;
CREATE TABLE departments (
    dept_id     INT PRIMARY KEY,
    dept_name   VARCHAR(50),
    head_name   VARCHAR(50),
    total_seats INT,
    location    VARCHAR(50)
);
INSERT INTO departments (dept_id, dept_name, head_name, total_seats, location) values 
(1, 'Computer Science', 'Dr. Ahmed',  60, 'Block A'),
(2, 'Mathematics',      'Dr. Sara',   40, 'Block B'),
(3, 'Physics',          'Dr. Ali',    35, 'Block C'),
(4, 'English',          'Dr. Zara',   50, 'Block A'),
(5, 'Chemistry',        'Dr. Omar',   30, 'Block D');
select * from departments;

CREATE TABLE students (
    student_id  INT PRIMARY KEY,
    name        VARCHAR(50),
    age         INT,
    city        VARCHAR(50),
    marks       INT,
    dept_id     INT,
    email       VARCHAR(100),
    gender      VARCHAR(10),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO students(student_id, name, age, city, marks, dept_id, email, gender) VALUES 
 (1,  'Ali Hassan',    20, 'Lahore',    85, 1, 'ali@gmail.com',    'Male'),
 (2,  'Sara Khan',     22, 'Karachi',   90, 2, 'sara@gmail.com',   'Female'),
 (3,  'Ahmed Raza',    19, 'Lahore',    70, 1, 'ahmed@gmail.com',  'Male'),
 (4,  'Zara Malik',    21, 'Islamabad', 95, 3, 'zara@gmail.com',   'Female'),
 (5,  'Omar Sheikh',   23, 'Karachi',   60, 4, 'omar@gmail.com',   'Male'),
 (6,  'Ayesha Noor',   20, 'Lahore',    88, 2, 'ayesha@gmail.com', 'Female'),
 (7,  'Bilal Ahmed',   24, 'Islamabad', 55, 5, 'bilal@gmail.com',  'Male'),
 (8,  'Hina Fatima',   21, 'Karachi',   92, 1, 'hina@gmail.com',   'Female'),
 (9,  'Usman Ali',     22, 'Lahore',    78, 3, 'usman@gmail.com',  'Male'),
 (10, 'Sana Mirza',    19, 'Islamabad', 83, 4, 'sana@gmail.com',   'Female'),
 (11, 'Faisal Iqbal',  25, 'Karachi',   67, 5, 'faisal@gmail.com', 'Male'),
 (12, 'Mehwish Tariq', 20, 'Lahore',    91, 2, 'mehwish@gmail.com','Female');

select * from students;
select name,student_id,email,gender,city,age from students;
select * from students where marks >80;
select name,city,marks from students where city = 'lahore' and marks > 80;
select name ,student_id,marks from students where marks between 60 and 80;
select name ,city from students where name like  'S%';
select * from students where gender = 'female' or marks >75;
select s.name,
		s.student_id,
		s.marks,
        s.city,
        s.gender,
        d.dept_name from 
        students s inner join departments d on s.student_id = s.student_id; 
select name,min(marks) as avg_marks from students group by name;
select max(marks) as highes_marks,min(marks) as lowest_marks from students;
select  max(marks) as highest_marks from students;
select * from students order by marks desc limit 5;
select city,count(*) as total from students group by city;
select name,marks from students order by marks asc limit 5;
select gender,avg(marks) from students group by gender having gender ='female';
select * from students where gender = 'female' order by marks desc limit 3 ;
select name,city ,max(marks) as total from students  where marks > 90 or city = 'lahore' group  by name;
select count(*) as total_students from students where city = 'lahore';
select name, marks from students where gender = 'female' order by marks desc limit 3;
update students set age = 30 where name = 'Sara khan';
delete from students where name ='sara khan'; 
select s.name,
		max(s.marks) as high_marks
         from students s inner join departments d on s.student_id = d.dept_id where gender = 'male' group by name ;