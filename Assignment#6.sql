##ASSIGNMENT6##

use SQLAssignments

select*from Worker
where month(Join_Date)=2 AND YEAR(Join_Date) = 2020

select*from Worker W1
where W1.Salary IN
      (SELECT Salary
	   FROM Worker
	   GROUP BY Salary,Join_Date
	   HAVING COUNT(*)>1)
DELETE FROM worker
WHERE ID NOT IN
      (SELECT MAX(ID)
	   FROM Worker
	   GROUP BY First_Name)