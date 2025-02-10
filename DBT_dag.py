from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

default_args = {
    'owner' : 'postgres',
    'start_date' : datetime.now(),
    'retries' : 1
}

with DAG(
    'dbt_pipeline',
    default_args=default_args,
    description="Execução do dbt run e dbt teste",
     schedule='@hour',
     catchup=False) as dag:

        dbt_run = BashOperator(task_id="dbt_run",
                       bash_command='cd dbt_projeto_ETL && dbt run',
                       dag=dag)


        dbt_test = BashOperator(task_id="dbt_test",
                       bash_command='cd dbt_projeto_ETL && dbt test',
                       dag=dag)
        
dbt_run >> dbt_test