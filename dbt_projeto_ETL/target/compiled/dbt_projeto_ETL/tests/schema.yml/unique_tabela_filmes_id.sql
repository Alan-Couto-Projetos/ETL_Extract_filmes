
    
    

select
    id as unique_field,
    count(*) as n_records

from "tabela_filmes"."public"."tabela_filmes"
where id is not null
group by id
having count(*) > 1


