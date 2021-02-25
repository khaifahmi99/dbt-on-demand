with orders as (
    select customer_id, order_id from {{ ref('stg_orders') }}
),

payments as (
    select order_id, amount from {{ ref('stg_payments') }}
),

final as (
    select 
        orders.order_id,
        orders.customer_id,
        payments.amount

    from payments
    left join orders using (order_id)

)

select * from final