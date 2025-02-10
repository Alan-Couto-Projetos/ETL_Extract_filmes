select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    title as unique_field,
    count(*) as n_records

from "tabela_filmes"."public"."tabela_filmes"
where title is not null
group by title
having count(*) > 1



      
    ) dbt_internal_test