--Deliverable 1 #1 to #7
SELECT 	e.emp_no, e.first_name, e.last_name,
		titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees as e
RIGHT JOIN titles
ON(e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Deliverable 1 #8 to #14
SELECT 	DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles as rt	
ORDER BY rt.emp_no, rt.to_date DESC;

--Deliverable 1 #15 to #21
SELECT COUNT(ut.emp_no), ut.title 
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.emp_no) DESC;


