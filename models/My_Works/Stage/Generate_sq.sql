with g_sk as(select id, name from mydb.public.TEST_SK)
select {{ dbt_utils.generate_surrogate_key(['id', 'name']) }} id_name_sk,id,name
 from g_sk