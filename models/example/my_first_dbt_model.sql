/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


select CustomerID, Gender, Age, annual_income, spending_score
from {{ source('source', 'customers') }}



/*
    Uncomment the line below to remove records with null `id` values
*/

where CustomerID is not null
