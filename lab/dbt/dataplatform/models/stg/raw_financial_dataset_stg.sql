with source as (
      select * from {{ source('raw', 'financial_dataset') }}
),
renamed as (
    select
        CAST(Segment as VARCHAR ) as segment,
        CAST(Country as VARCHAR) as country,
        CAST(Product as VARCHAR) as product,
        CAST("Discount Band" as VARCHAR) as discount_band,
        CAST("Units Sold" as INTEGER) as units_sold,
        CAST("Manufacturing Price" as INTEGER) as manufacturing_price,
        CAST("Sale Price" as INTEGER) as sale_price,
        CAST("Gross Sales" as DOUBLE) as gross_sales,
        CAST(Discounts as DOUBLE) as discounts,
        CAST(Sales as DOUBLE) as sales,
        CAST(COGS as DOUBLE) as cost_of_goods_sold,
        CAST(Profit as DOUBLE) as profit,
        CAST(Date as DATE) as sales_date,
        CAST("Month Number" as INTEGER) as month_number,
        CAST("Month Name" as VARCHAR) as month_name,
        CAST(Year as INTEGER) as year

    from source
)
select * from renamed
 