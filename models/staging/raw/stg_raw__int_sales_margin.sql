with 

source as (

    select * from {{ source('raw', 'int_sales_margin') }}

),

renamed as (

    select

    from source

)

select * from renamed
