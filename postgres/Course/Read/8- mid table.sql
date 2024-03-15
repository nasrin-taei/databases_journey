SELECT *
FROM student;
SELECT *
FROM course;
SELECT *
FROM student_course;

SELECT *
FROM student
         JOIN student_course ON student.id = student_course.student_id
         JOIN course ON course.id = student_course.course_id;