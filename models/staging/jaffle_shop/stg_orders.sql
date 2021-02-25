with orders as (
    select
        id as order_id,
        user_id as customer_id,
        status,
        order_date

    from raw.jaffle_shop.orders
)

select * from orders