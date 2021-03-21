Select e.emp_no,
    e.first_name,
    e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO Ret_emp_titles
From employees as e
LEFT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SElECT * From ret_emp_titles


-- Use Dictinct with Orderby to remove duplicate rows
DROP TABLE new_ret_titles
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO new_ret_titles
FROM Ret_emp_titles
ORDER BY emp_no ASC, to_date DESC;

--Retiring Titles count
Select Count(title),
title
INTO ret_titles_count
FROM new_ret_titles
GROUP BY (title)
ORDER BY Count(title) DESC;

SElECT * From ret_titles_count

Select  DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    det.from_date,
    det.to_date,
    ti.title
INTO mentor
From employees as e
JOIN dept_emp as det
ON (e.emp_no = det.emp_no)
JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
 AND (det.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SElECT * From mentor
