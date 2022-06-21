-- 2番目に高い値を取り出す(1つしかない場合はNULL)
select IFNULL(
    (select distinct Salary
     from Employee
     order by Salary desc
     limit 1 offset 1),
NULL) as SecondHighestSalary;
