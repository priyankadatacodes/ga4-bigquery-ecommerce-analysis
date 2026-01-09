-- 1. Check how many rows are in the events table
SELECT
  COUNT(*) AS total_rows
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;


-- 2. Find the first and last date in the data
SELECT
  MIN(event_date) AS start_date,
  MAX(event_date) AS end_date
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;


-- 3. Count how many times each event happened
SELECT
  event_name,
  COUNT(*) AS event_count
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY event_name
ORDER BY event_count DESC;


-- 4. Check how many rows have user_pseudo_id and how many are missing
SELECT
  COUNT(*) AS total_rows,
  COUNT(user_pseudo_id) AS users_with_id,
  COUNT(*) - COUNT(user_pseudo_id) AS missing_user_ids
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;


-- 5. Find duplicate events for the same user at the same time
SELECT
  event_name,
  event_timestamp,
  user_pseudo_id,
  COUNT(*) AS duplicate_count
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY event_name, event_timestamp, user_pseudo_id
HAVING COUNT(*) > 1
LIMIT 10;


-- 6. Look at min, max, and average purchase revenue
SELECT
  COUNT(*) AS purchase_events,
  MIN(ecommerce.purchase_revenue) AS min_revenue,
  MAX(ecommerce.purchase_revenue) AS max_revenue,
  AVG(ecommerce.purchase_revenue) AS avg_revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase';


-- 7. Count how many item records exist for purchase events
SELECT
  COUNT(*) AS total_items
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
UNNEST(items) AS item
WHERE event_name = 'purchase';


-- 8. See how many events come from each traffic source
SELECT
  traffic_source.source,
  COUNT(*) AS events
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY traffic_source.source
ORDER BY events DESC;


-- 9. Get total events for each event type
SELECT
  event_name,
  COUNT(*) AS total_events
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY event_name
ORDER BY total_events DESC;


-- 10. Check how many users reach each funnel step
SELECT
  event_name,
  COUNT(DISTINCT user_pseudo_id) AS users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name IN ('view_item', 'add_to_cart', 'purchase')
GROUP BY event_name
ORDER BY users DESC;


-- 11. Count unique users by traffic source
SELECT
  traffic_source.source AS source,
  COUNT(DISTINCT user_pseudo_id) AS users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY source
ORDER BY users DESC;


-- 12. Calculate total revenue from all purchases
SELECT
  SUM(ecommerce.purchase_revenue) AS total_revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase';


-- 13. Get top 10 products by revenue
SELECT
  item.item_name AS product_name,
  SUM(item.price) AS revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
UNNEST(items) AS item
WHERE event_name = 'purchase'
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;


-- 14. Compare total users and new users (first_visit)
SELECT
  COUNT(DISTINCT user_pseudo_id) AS total_users,
  COUNT(DISTINCT IF(event_name = 'first_visit', user_pseudo_id, NULL)) AS new_users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;
