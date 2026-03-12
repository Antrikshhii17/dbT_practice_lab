/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


select 
    CustomerID, 
    Gender, 
    Age, 
    annual_income, 
    spending_score 
from {{ source('customer_data', 'customers') }}

where CustomerID is not null
