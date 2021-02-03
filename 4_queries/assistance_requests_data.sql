SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
ORDER BY duration;