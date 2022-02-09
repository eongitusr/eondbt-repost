with payment as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,        
	    created as order_at
        
    from {{ source('stripe', 'payment') }}
)
select * from payment