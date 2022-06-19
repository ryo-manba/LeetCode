select user_id, CONCAT(upper(substring(name, 1,1)), lower(substring(name, 2))) as name
  from users
order by user_id asc;
