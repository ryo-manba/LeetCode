# 奇数 かつ M から始まらない場合 salalyを昇順出力
select employee_id,
  case 
      when employee_id % 2 = 1 AND name not like 'M%' then salary
      else 0
  END AS bonus 
from Employees
order by employee_id asc;
