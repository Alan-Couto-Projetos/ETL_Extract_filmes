
  
    

  create  table "tabela_filmes"."public"."view_tabela_filmes__dbt_tmp"
  
  
    as
  
  (
    

with source_data as (
   

   SELECT * FROM tabela_filmes

)

SELECT *
FROM source_data
  );
  