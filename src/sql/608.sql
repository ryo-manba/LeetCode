-- 3つの条件分岐
select id, 'Root' as type
from Tree
where p_id is NULL
UNION
select id, 'Inner' as type
from Tree
where id in (select distinct p_id
          from Tree
          where p_id is not null
         )
         and p_id is not null
UNION
select id, 'Leaf' as type
from Tree
where id not in (select distinct p_id
                 from Tree
                 where p_id is not null
                )
                and p_id is not null;

-- if文を使った別解
select
    atree.id,
    IF(ISNULL(atree.p_id),
        'Root',
        IF(atree.id IN (SELECT p_id FROM tree), 'Inner', 'Leaf')) Type
FROM
    tree atree
ORDER BY atree.id;
