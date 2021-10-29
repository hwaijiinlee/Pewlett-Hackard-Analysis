--Deliverable 1 #1 to #7
SELECT 	e.emp_no, e.first_name, e.last_name,
		titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees as e
RIGHT JOIN titles
ON(e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;




-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;
