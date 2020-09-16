
SELECT MAX(average_assistance_time)
FROM (SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
	    FROM assistance_requests 
    	JOIN students ON students.id = assistance_requests.student_id
		JOIN cohorts ON cohorts.id = cohort_id
		group by cohorts.name) as max_avg;
