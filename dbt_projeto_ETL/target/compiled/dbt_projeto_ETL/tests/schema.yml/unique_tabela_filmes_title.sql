
    
    

select
    title as unique_field,
    count(*) as n_records

from "tabela_filmes"."public"."tabela_filmes"
where title is not null
group by title
having count(*) > 1


