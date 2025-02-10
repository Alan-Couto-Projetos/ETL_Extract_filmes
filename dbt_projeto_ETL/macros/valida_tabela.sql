#teste
{% test valida_tabela(model, column_name) %}

    {{ config(severity = 'warn') }}

    with consulta_teste as (

    select
        count({{ column_name }}) AS coluna_teste

    from {{ model }}

    )
    SELECT * 
    FROM consulta_teste
    WHERE coluna_teste = 0

{% endtest %}