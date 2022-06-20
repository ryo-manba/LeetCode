# どちらかのテーブルのみにある行を抽出する
select A1.employee_id from 
(SELECT
  s1.employee_id
FROM Employees s1
  left outer join Salaries s2
on 
  s1.employee_id = s2.employee_id
where
  s2.employee_id is null) A1
union
select A2.employee_id from 
(SELECT
  s2.employee_id
FROM Salaries s2
  left outer join Employees s1
on 
  s1.employee_id = s2.employee_id
where
  s1.employee_id is null) A2
  order by employee_id asc;
