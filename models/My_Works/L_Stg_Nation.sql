with l_NATION_DET AS 
(
SELECT 
N_NATIONKEY,
N_NAME 
FROM mydb.public.NATIONS)
select * from l_NATION_DET
where N_NATIONKEY in (18,19,20)