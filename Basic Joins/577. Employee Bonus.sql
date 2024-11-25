SELECT e.name AS name, b.bonus AS bonus
FROM bonus b
right JOIN employee e ON e.empid = b.empid
WHERE ifnull(bonus,0) < 1000