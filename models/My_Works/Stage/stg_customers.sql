with customer as
(
SELECT
C_CUSTKEY,
C_ADDRESS,
C_NATIONKEY 
FROM 
mydb.public.customers
)
select * from customer