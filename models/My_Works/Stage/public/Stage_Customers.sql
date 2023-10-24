WITH CUSTOMER AS
(
    SELECT * FROM {{source('public','customers')}}
)
SELECT * FROM CUSTOMER