WITH total_tweets AS(
SELECT 
  user_id,
  COUNT(tweet_id) AS tweet_bucket
FROM tweets
WHERE tweet_date BETWEEN '2022-01-01'
  AND '2022-12-31'
GROUP BY user_id)

SELECT tweet_bucket,
  COUNT(user_id) AS user_num
FROM total_tweets
GROUP BY tweet_bucket;
