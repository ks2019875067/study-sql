INSERT INTO randX
    WITH RECURSIVE
      fa( id, x, y) AS (
      VALUES(1 , abs(random())%99+1, abs(random())%50+20)
      UNION ALL 
      SELECT id+1 , abs(random())%99+1 , abs(random())%50+20 
      FROM fa
      WHERE id<=1000
	)
    
select * from fa;
select * from test;

commit;
