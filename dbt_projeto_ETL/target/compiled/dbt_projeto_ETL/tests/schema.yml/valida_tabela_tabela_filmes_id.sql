

    

    with consulta_teste as (

    select
        count(id) AS coluna_teste

    from "tabela_filmes"."public"."tabela_filmes"

    )
    SELECT * 
    FROM consulta_teste
    WHERE coluna_teste = 0

