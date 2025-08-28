-- Use the salesdb database
USE salesdb;
-- Show the total payment amount for each payment date
-- Group payments by date, then sum the amounts
-- Sort the results by payment date in descending order (latest first)
-- Show only the top 5 latest payment dates
SELECT 
    paymentDate,
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;
