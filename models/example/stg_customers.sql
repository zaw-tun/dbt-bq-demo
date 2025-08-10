With stg_customers AS (
    select
        customer_id,
        CONCAT(first_name, ' ', last_name) as customer_name,
        email as email_address,
        address as billing_address
    from raw.customers
)

Select * from stg_customers