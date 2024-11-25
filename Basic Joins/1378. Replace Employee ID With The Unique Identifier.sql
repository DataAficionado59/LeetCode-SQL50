--Write your MySQL query statement below
SELECT em.unique_id as unique_id, e.name as name
FROM employees e LEFT JOIN employeeuni em
ON e.id=em.id