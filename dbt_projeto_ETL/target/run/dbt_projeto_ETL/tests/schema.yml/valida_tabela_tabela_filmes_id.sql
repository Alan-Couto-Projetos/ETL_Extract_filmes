select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    

    with consulta_teste as (

    select
        count(id) AS coluna_teste

    from "tabela_filmes"."public"."tabela_filmes"

    )
    SELECT * 
    FROM consulta_teste
    WHERE coluna_teste = 0


      
    ) dbt_internal_test