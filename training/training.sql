/*Question 1:
During the transactions that occurred in 2021, in which month did the total transaction value 
(after_discount) reach its highest? Use is_valid = 1 to filter transaction data. 
Source table : order_detail*/

SELECT
    DATE_FORMAT(order_date, '%m') AS Month_ID,
    DATE_FORMAT(order_date, '%M') AS Month,
    DATE_FORMAT(order_date, '%Y') AS Year,
    SUM(after_discount) AS total_transaction
FROM order_detail
WHERE YEAR(order_date) = 2021 
  AND is_valid = 1
GROUP BY Month_ID, Month, Year
ORDER BY total_transaction DESC;


/*Question: 2 During transactions in the year 2022, which category generated the highest transaction value? 
Use is_valid = 1 to filter transaction data. Source table : order_detail, sku_detail*/

SELECT
    DATE_FORMAT(o.order_date, '%Y') AS year,
    s.category,
    SUM(o.after_discount) AS total_transaction
FROM
    order_detail AS o
    JOIN sku_detail AS s ON o.sku_id = s.id
WHERE
    o.is_valid = 1 
    AND DATE_FORMAT(o.order_date, '%Y') = '2022'
GROUP BY
    DATE_FORMAT(o.order_date, '%Y'),
    s.category
ORDER BY
    total_transaction DESC;
    
/*Question 3: Compare the transaction values of each category in the years 2021 and 2022. 
Mention which categories experienced an increase and which categories experienced a decrease in transaction values from 2021 to 2022. 
Use is_valid = 1 to filter transaction data. 
Source table : order_detail, sku_detail*/

with
final_table as (
	select
		s.category,
        SUM(case when extract(year from o.order_date) = 2021 then o.after_discount end) as transaction_2021,
		SUM(case when extract(year from o.order_date) = 2022 then o.after_discount end) as transaction_2022
	from order_detail as o
    join sku_detail as s on o.sku_id = s.id
    where o.is_valid = 1
    group by 1
    order by 1
    )
select *, (transaction_2022 - transaction_2021) as delta,
case when transaction_2022>transaction_2021 then 'INCREASE' else 'DECREASE' end as remark
from final_table
;
/* Question 4: Display the top 5 most popular payment methods used during 2022 (based on total unique orders). 
Use is_valid = 1 to filter transaction data.
Source table : order_detail, payment_detail*/

SELECT p.payment_method,
    DATE_FORMAT(o.order_date, '%Y') AS year,
    COUNT(DISTINCT o.id) AS freq
FROM
    order_detail AS o
JOIN
    payment_detail AS p ON o.payment_id = p.id
WHERE
    o.is_valid = 1 
    AND YEAR(o.order_date) = 2022
GROUP BY
    p.payment_method,
    DATE_FORMAT(o.order_date, '%Y')
ORDER BY
    freq DESC
LIMIT 5;

/* Question 5: Sort these 5 products based on their transaction values.

1. Samsung, 2. Apple, 3. Sony, 4. Huawei, 5. Lenovo

Use is_valid = 1 to filter transaction data. */

WITH final_table AS (
    SELECT
        CASE
            WHEN LOWER(s.sku_name) LIKE '%samsung%' THEN 'Samsung'
            WHEN LOWER(s.sku_name) LIKE '%apple%' 
                 OR LOWER(s.sku_name) LIKE '%iphone%' 
                 OR LOWER(s.sku_name) LIKE '%macbook%' THEN 'Apple'
            WHEN LOWER(s.sku_name) LIKE '%sony%' THEN 'Sony'
            WHEN LOWER(s.sku_name) LIKE '%huawei%' THEN 'Huawei'
            WHEN LOWER(s.sku_name) LIKE '%lenovo%' THEN 'Lenovo'
        END AS product_brand,
        SUM(o.after_discount) AS total_transaction
    FROM
        order_detail AS o
    JOIN
        sku_detail AS s ON o.sku_id = s.id
    WHERE
        o.is_valid = 1
    GROUP BY
        product_brand
)
SELECT *
FROM final_table
WHERE product_brand IS NOT NULL
ORDER BY total_transaction DESC