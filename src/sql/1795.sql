# 横持ちを縦持ちに変換
SELECT product_id, 'store1' AS store, store1 AS price FROM Products where store1 is not null
UNION ALL 
SELECT product_id, 'store2' AS store, store2 AS price FROM Products where store2 is not null
UNION ALL
SELECT product_id, 'store3' AS store, store3 AS price FROM Products where store3 is not null;
