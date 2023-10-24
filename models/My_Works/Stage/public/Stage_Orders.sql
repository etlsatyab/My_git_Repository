WITH ORDERS AS
(
    SELECT * FROM {{source('public','orders')}}
)
SELECT * FROM ORDERS

