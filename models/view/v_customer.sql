-- {{ config(materialized = 'view') }} # Not needed as its in another folder than specified in project.yml

    SELECT
        customer_id,
        CONCAT(first_name, ' ', last_name) as customer_name,
        email as email_address,
        address as billing_address
    FROM raw.customers