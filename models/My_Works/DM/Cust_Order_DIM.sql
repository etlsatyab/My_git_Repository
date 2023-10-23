{{
config(
materialized='table'
)
}}

with 
Customer_dtl as
(
select * from {{ ref('stg_customers') }}
),
Order_dtl as
(
select * from {{ref('stg_orders')}}
),
Nation_dtl as
(
select * from {{ref('Stg_Nation')}}
),
Final 
AS
(
SELECT
C_CUSTKEY,
C_ADDRESS,
N_NAME ,
O_ORDERSTATUS,
SUM(O_TOTALPRICE) TOTALPRICE
FROM 
Customer_dtl , 
Order_dtl , 
Nation_dtl
WHERE 
C_CUSTKEY=O_CUSTKEY AND
C_NATIONKEY=N_NATIONKEY
GROUP BY C_CUSTKEY,
C_ADDRESS,
N_NAME ,
O_ORDERSTATUS)
SELECT * FROM Final







