with NATION_DET AS 
(
SELECT 
N_NATIONKEY,
N_NAME 
FROM mydb.public.NATIONS)
select * from NATION_DET
where N_NATIONKEY in (17,18,19)