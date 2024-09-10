with 

source as (

    select * from {{ source('raw', 'int_orders_margin') }}

),

renamed as (

    select

    from source

)

select * from renamed
