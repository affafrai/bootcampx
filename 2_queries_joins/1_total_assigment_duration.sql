select sum(assignment_submissions.duration) as total_duration
from assignment_submissions
join students on students.id = assignment_submissions.student_id and
join cohorts on students.cohort_id = cohorts.id
where cohorts.name = 'FEB12';




