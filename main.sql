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
