with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        --purchse_price as purchase_price
        CAST (purchse_price as FLOAT64) as purchase_price
    from source
)

select * from renamed
