SELECT 
    s.id, 
    s.fullname, 
    ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 5;

WITH StudentGrades AS (
    SELECT 
        s.id,
        s.fullname,
        ROUND(AVG(g.grade)) as average_grade
    FROM students s
    JOIN grades g ON s.id = g.student_id
    WHERE g.subject_id = 1
    GROUP BY s.id
)
SELECT 
    id, 
	fullname, 
    average_grade
FROM StudentGrades
ORDER BY average_grade DESC
LIMIT 1;

SELECT 
    s.id, 
    s.fullname, 
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
where g.subject_id = 1
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1;

SELECT ROUND(AVG(grade), 2) AS average_grade
FROM grades;

SELECT s.name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
WHERE t.fullname = 'Donald Stone';

SELECT fullname
FROM students s 
WHERE group_id  = '3';

SELECT g.grade
FROM grades g
JOIN students s ON g.student_id = s.id
WHERE s.group_id = '2' AND g.subject_id  = '3';

SELECT AVG(g.grade) AS average_drade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE t.fullname = 'Lisa Brown';

SELECT DISTINCT subjects.name
FROM subjects
JOIN students ON subjects.id = students.id;

SELECT subjects.name
FROM subjects
JOIN students ON subjects.id = students.id
JOIN teachers ON subjects.teacher_id = teachers.id
WHERE students.fullname = 'Heidi Moore' AND teachers.fullname = 'Lisa Brown';