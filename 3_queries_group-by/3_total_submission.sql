SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) as total_submissions
FROM cohorts
JOIN students
ON cohorts.id = cohort_id
JOIN assignment_submissions
ON students.id = student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.id) DESC;
