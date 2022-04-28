/*================Database=================*/
CREATE DATABASE Student_management_system;

use Student_management_system;


/*================Tables=================*/

/*================Student table=================*/
CREATE TABLE student (
    sid CHAR(4) PRIMARY KEY,
    sname VARCHAR(20),
    sdob DATE,
    scity VARCHAR(20),
    squal VARCHAR(20),
    semail VARCHAR(30),
    sphone VARCHAR(20)
);


/*================Course table=================*/

CREATE TABLE course (
    courseid CHAR(4) PRIMARY KEY,
    coursename VARCHAR(40),
    coursecategory VARCHAR(20),
    coursefees DECIMAL(10 , 2 ),
    courseduration INT
);


/*================Batch table=================*/

CREATE TABLE batch (
    batchid CHAR(4) PRIMARY KEY,
    bsdate DATETIME,
    bstrength INT,
    courseid CHAR(4),
    FOREIGN KEY (courseid)
        REFERENCES course (courseid)
);


/*================enrollment table=================*/

CREATE TABLE enrollment (
    batchid CHAR(4),
    sid CHAR(4),
    edate DATE,
    PRIMARY KEY (batchid , sid),
    FOREIGN KEY (sid)
        REFERENCES student (sid),
    FOREIGN KEY (batchid)
        REFERENCES batch (batchid)
);



/*==================== POPULATING TABLES ======================*/


insert into student( sid,sname,sdob,scity,squal,semail,sphone) 
values('s001','rajesh','1980-12-17','kolkata','graduate','rajesh@gmail.com','09830978900'),
('s002','john','1949-1-7','hyderabad','postgraduate','john@yahoo.com','9833978933'),
('s003','kunal','1967-2-3','pune','postgraduate','kunal@gmail.com','09830922900'),
('s004','maya','1990-12-17','kolkata','graduate','maya.com','09830765900'),
('s005','jadeja','1940-1-23','kolkata','postgraduate','jadeja@yahoo.com','09837865432'),
('s006','suman','1995-6-17','kolkata','undergraduate','suman@gmail.com','0983097890'),
('s007','soha','1990-7-17','mumbai','undergraduate',null,null),
('s008','thapa','1980-8-17','assam','graduate','thapa@gmail.com','19830978900'),
('s009','hira','1954-9-17','mumbai','postgraduate','hira@gmail.com','09234097890'),
('s010','akash','1977-1-27','kolkata','postgraduate','akash@gmail.com',null),
('s011','amir','1992-1-1','delhi','undergraduate','amirgmail.com','09831118900'),
('s012','ramesh','1980-12-17','kolkata','graduate','ramesh@yahoo.com','09830918900'),
('s013','suresh','1980-3-22','kolkata','graduate','suresh@gmail.com','09830978912'),
('s014','amir','1945-1-13','delhi','postgraduate','amir123@rediffmail.com','29830978900'),
('s015','esha','1981-10-30','mumbai','graduate','esha@gmail.com','09831378900'),
('s016','gopichand','1966-5-7','assam','postgraduate','gopi@gmail.com','09831918100'),
('s017','sonali','1995-11-11','mumbai','undergraduate','sonali@gmail.com','09855978900'),
('s018','lisa','1983-1-31','delhi','graduate','lisa@gmail.com','09832978923'),
('s019','smith','1980-12-17','pune','graduate','smith@yahoo.com','09831111900'),
('s020','rajesh','1994-7-8','pune','graduate','rajesh@gmail.com','09830978900');



insert into course(courseid,coursename,coursecategory,coursefees,courseduration)
 values('c001','sql server','compsc',1000,40),
('c002','compmat','civileng',3000,120),
('c003','biomaths','biotech',4000,160),
('c004','word','compsc',500,8),
('c005','photo','compsc',800,8);




insert into batch(batchid,bsdate,bstrength,courseid) 
values('b001','2013-02-01 09:30' ,10, 'c001'),
('b002','2013-03-01 09:30' ,10, 'c002'),
('b003','2013-01-01 09:30' ,10, 'c003'),
('b004','2013-03-31 09:30' ,10, 'c003'),
('b005','2013-04-04 09:30' ,10, 'c005'),
('b006','2013-01-27 09:30' ,10, 'c002'),
('b007','2012-11-30 09:30' ,10, 'c004'),
('b008','2013-01-28 09:30' ,10, 'c002'),
('b009','2013-02-16 09:30' ,10,'c001'),
('b010','2012-12-12 09:30' ,10, 'c003');



insert into enrollment(batchid,sid,edate)
 values('b001','s001','2013-01-01'),
('b001','s002','2013-01-31'),
('b001','s003','2013-01-11'),
('b001','s004','2013-02-02'),
('b001','s005','2013-01-01'),
('b001','s006','2013-01-01'),
('b001','s007','2013-01-01'),
('b001','s008','2013-01-01'),
('b001','s009','2013-01-01'),
('b002','s010','2013-02-01'),
('b002','s012','2013-02-27'),
('b002','s014','2013-01-21'),
('b002','s016','2013-01-12'),
('b002','s017','2013-02-15'),
('b003','s018','2013-12-11'),
('b003','s019','2013-02-27'),
('b003','s020','2013-01-21'),
('b003','s013','2013-01-01'),
('b003','s007','2013-12-15'),
('b003','s008','2013-11-25'),
('b004','s001','2013-02-11'),
('b004','s003','2013-02-27'),
('b004','s006','2013-01-21'),
('b004','s009','2013-03-01'),
('b005','s001','2013-02-11'),
('b005','s003','2013-02-27'),
('b005','s006','2013-03-21'),
('b005','s009','2013-04-01'),
('b006','s001','2013-01-11'),
('b006','s003','2012-12-27'),
('b006','s006','2013-01-11'),
('b006','s009','2013-01-01'),
('b006','s007','2013-01-13'),
('b006','s002','2012-12-17'),
('b006','s008','2013-01-21'),
('b006','s005','2013-01-01'),
('b007','s001','2012-11-11'),
('b007','s002','2012-11-11'),
('b007','s003','2012-11-21'),
('b007','s004','2012-11-13'),
('b007','s007','2012-10-13'),
('b007','s010','2012-10-17'),
('b007','s009','2012-12-01'),
('b008','s011','2012-11-11'),
('b008','s012','2012-11-11'),
('b008','s013','2012-11-21'),
('b008','s014','2012-11-13'),
('b008','s017','2012-10-13'),
('b008','s020','2012-10-17'),
('b008','s019','2012-12-01'),
('b009','s001','2012-11-11'),
('b009','s012','2012-11-11'),
('b009','s013','2012-11-21'),
('b009','s004','2012-11-13'),
('b009','s007','2012-10-13'),
('b009','s010','2012-10-17'),
('b009','s009','2012-12-01'),
('b010','s011','2012-11-11'),
('b010','s002','2012-11-11'),
('b010','s003','2012-11-21'),
('b010','s014','2012-11-13'),
('b010','s017','2012-10-13'),
('b010','s010','2012-10-17'),
('b010','s009','2012-12-01');



-- Display all undergraduate student whose name starts with ‘S’ and is of length between 5 and 20.
SELECT 
    sname
FROM
    student
WHERE
    sname LIKE 's%'
        AND LENGTH(sname) BETWEEN 5 AND 20
        AND squal = 'undergraduate';



-- Display the student who are senior citizen (>=60).

SELECT 
    sname,sdob
FROM
    student
WHERE
    ROUND(DATEDIFF(CURRENT_DATE, sdob) / 365) >= 60;


-- Display student who were born after 1st of June 1980

SELECT 
    sname
FROM
    student
WHERE
    sdob > '1980-06-01';



-- All emails should have “@” anywhere after the first character and should end with “.com”. Display count of students having invalid email id.

SELECT 
    semail
FROM
    student
WHERE
    semail NOT LIKE '_%@%.com';



-- Display the name and email of student who have a Gmail account.

SELECT 
    sname, semail
FROM
    student
WHERE
    semail LIKE '_%@gmail.com';
    
    
-- Display the qualification and the total number of students registered based on their qualifications.
    
SELECT 
    squal, COUNT(sid) as totalstud
FROM
    student
GROUP BY squal;


  
--  Display student whose city is Kolkata as “HomeStudent ” and others as “DistanceStudent” under a column “Remarks”. Also display the name and city of the student.
SELECT 
    sname,
    scity,
    IF(scity = 'kolkata',
        'HomeStudent',
        'DistanceStudent') as Remarks
FROM
    student;
    
    
    
-- Display batchid, coursename, batch start date, batch end date for all batches. (batch end date=batch start date +course duration).

SELECT 
    b.batchid,
    c.coursename,
    DATE_FORMAT(b.bsdate, '%Y-%m-%d') batch_start_date,
    DATE_FORMAT(b.bsdate + INTERVAL c.courseduration DAY,
            '%Y-%m-%d') end_date_of_batch
FROM
    batch b
        JOIN
    course c ON c.courseid = b.courseid;
    
    
    
    
    
-- Display student who enrolled for the batch after its start date.

DELIMITER //
CREATE PROCEDURE enrolled_after_batch_started ()  
BEGIN  
SELECT 
    s.sname
FROM
    student s
        JOIN
    enrollment e ON s.sid = e.sid
        JOIN
    batch b ON b.batchid = e.batchid
WHERE
    e.edate > b.bsdate;
END //
DELIMITER ;

call enrolled_after_batch_started();




-- Display the studentid, studentname , totalfees for all student.

SELECT 
    s1.sid, s1.sname, s2.totalfees
FROM
    student s1
        JOIN
    (SELECT 
        s.sid id, SUM(c.coursefees) totalfees
    FROM
        student s
    JOIN enrollment e ON s.sid = e.sid
    JOIN batch b ON b.batchid = e.batchid
    JOIN course c ON c.courseid = b.courseid
    GROUP BY s.sid) s2 ON s1.sid = s2.id;




-- Display count of students having no contact information. (Either email or phone).

SELECT 
    COUNT(sid)
FROM
    student
WHERE
    semail IS NULL OR sphone IS NULL;
    
    
    
-- Display coursename having above average fees.


SELECT 
    coursename,coursefees
FROM
    course
WHERE
    coursefees > (SELECT 
            AVG(coursefees)
        FROM
            course);
       
       
       
       
-- Display coursename where fees are less than the average fees of its category.


select coursename
from course
where coursefees < (select avg(coursefees) from course);

/*
SELECT 
    c1.coursename,coursefees
FROM
    course c1
        JOIN
    (SELECT 
        coursecategory, AVG(coursefees) average
    FROM
        course
    GROUP BY coursecategory) c2 ON c1.coursecategory = c2.coursecategory
WHERE
    c1.coursefees < c2.average;
    */
    
    
-- Display the coursename having the highest enrollment.

CREATE VIEW highest_enrollment AS
SELECT 
    course.courseid,
    coursename,
    COUNT(sid) AS total_student_enrollment
FROM
    enrollment
        JOIN
    batch ON enrollment.batchid = batch.batchid
        JOIN
    course ON batch.courseid = course.courseid
GROUP BY courseid , coursename;

-- ---------------
SELECT 
    c.courseid,c.coursename,count(sid)
FROM
    enrollment e
        JOIN
    batch b ON b.batchid = e.batchid
        JOIN
    course c ON c.courseid = b.courseid
GROUP BY c.courseid,c.coursename
HAVING COUNT(e.sid) >= ALL (SELECT 
        COUNT(e.sid)
    FROM
        enrollment e
            JOIN
        batch b ON b.batchid = e.batchid
            JOIN
        course c ON c.courseid = b.courseid
    GROUP BY c.courseid);





-- Display student name having duplicate email ids.

SELECT 
    s.*
FROM
    student s
        JOIN
    (SELECT 
        sname, semail, COUNT(*)
    FROM
        student
    GROUP BY sname , semail
    HAVING COUNT(*) > 1) b ON s.sname = b.sname
        AND s.semail = b.semail
ORDER BY s.semail;




--  Display student name having similar name but different email ids.

SELECT 
    student.*
FROM
    student
        JOIN
    (SELECT 
        sname, COUNT(*)
    FROM
        student
    GROUP BY sname
    HAVING COUNT(*) > 1) b ON student.sname = b.sname
ORDER BY student.semail
