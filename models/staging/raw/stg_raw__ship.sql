with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        cast (ship_cost as FLOAT64) as Ship_cost

    from source

)

select * from renamed
