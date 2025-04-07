
/*Bussiness Question*/
---Question 1, Which Category generates the most revenue?
SELECT 
	Category,
	SUM(Total_Spent) as Total_Spending
FROM
	Consumer_spending
GROUP BY
	Category
ORDER BY
	Total_Spending DESC;


-----QUESTION 2, What payment methods do consumers prefer?

SELECT
	COUNT(customer_id) as Transaction_Count,
	Payment_Method
FROM
	Consumer_spending
GROUP BY
	Payment_Method
ORDER BY
	Transaction_Count DESC;

-----QUESTION 3,What are the most popular products? services 

SELECT	
	TOP 10
	item,
	SUM(Total_Spent) as Total_Spending,
	COUNT(Customer_ID) as Purchase_Count
FROM
	Consumer_spending
GROUP BY 
	Item
ORDER BY
	Purchase_Count DESC;

---- Question 4, Where do people prefer to shop?

SELECT
	location,
	SUM(Total_Spent) as Total_Spending
	
FROM
	Consumer_Spending
GROUP BY
	Location
ORDER BY
	Total_Spending DESC;

----- Question 5, IDENTIFY HIGH VALUE CUSTOMERS

SELECT
	TOP 10
	customer_id,
	SUM(Total_Spent) AS total_spending,
	COUNT(customer_id) AS purchase_count,
	CAST(AVG(Total_Spent) AS DECIMAL (10,2)) AS avg_order_value
FROM 
	consumer_spending
GROUP BY 
	customer_id
ORDER BY 
	total_spending DESC;

-------Question 6, Analyze Purchase Frequency
WITH PurchaseIntervals AS (
  SELECT 
      customer_id,
      Transaction_Date,
      LAG(Transaction_Date) OVER (PARTITION BY customer_id ORDER BY Transaction_Date) AS previous_purchase_date
  FROM consumer_spending
)
SELECT
    customer_id,
    AVG(DATEDIFF(day, previous_purchase_date, Transaction_Date)) AS avg_days_between_purchases
FROM 
	PurchaseIntervals
GROUP BY 
	customer_id
ORDER BY
	avg_days_between_purchases DESC;

------ Question 7, Evaluate Weekday vs. Weekend Spending Behavior

SELECT
	CASE 
		WHEN DATEPART(WEEKDAY, Transaction_Date) IN (1, 7) THEN 'Weekend'
		ELSE 'Weekday'
	END AS Day_Type,
	SUM(Total_Spent) as Total_Spending,
	COUNT(customer_ID) as Purchase_Count,
	CAST(AVG(Total_Spent) AS DECIMAL (10,2)) as Avg_purchase_amount
FROM
	Consumer_spending
GROUP BY
	CASE 
		WHEN DATEPART(WEEKDAY, Transaction_Date) IN (1, 7) THEN 'Weekend'
		ELSE 'Weekday'
	END 
ORDER BY
	Total_Spending DESC;

----- Question 8, Analyse Monthly Sales Trends

SELECT
    YEAR(Transaction_Date) AS Sales_Year,
    MONTH(Transaction_Date) AS Sales_Month,
    SUM(Total_Spent) AS total_sales,
    COUNT(Customer_ID) AS transaction_count
FROM 
	consumer_spending
GROUP BY 
	YEAR(Transaction_Date), 
	MONTH(Transaction_Date)
ORDER BY 
	Sales_Year, 
	Sales_Month;

----- Question 9, Analyse Quarterly Sales Trends
SELECT 
	YEAR(Transaction_Date) AS Purchase_Year,
	DATEPART(QUARTER, Transaction_Date) as Purchase_Quarter,
	SUM(Total_Spent) as Total_Sales,
	COUNT(Customer_ID) as Purchases
FROM
	Consumer_spending
GROUP BY
	YEAR(Transaction_Date),
	DATEPART(QUARTER, Transaction_Date)
ORDER BY
	Purchase_Year,
	Purchase_Quarter;


--- QUESTION 10:Segment customers into spending tiers based on thier total purchases, and what portion revenue does each contribute

WITH CustomerTotals AS (
SELECT 
     Customer_ID,
     SUM(Total_Spent) AS Total_Spending
FROM
	Consumer_spending
GROUP BY 
	Customer_ID
),
SpendingTiers AS (
SELECT
     Customer_ID,
	 Total_Spending,
     CASE 
         WHEN Total_Spending < 10000 THEN 'Low Tier'
         WHEN Total_Spending BETWEEN 10000 AND 50000 THEN 'Mid Tier'
         ELSE 'High Tier'
       END AS Spending_Tier
FROM CustomerTotals
)
SELECT
    Spending_Tier,
    COUNT(Customer_ID) AS Num_Customers,
    SUM(Total_Spending) AS Tier_Total_Spending,
    CAST(AVG(Total_Spending) AS DECIMAL(10,2)) AS Avg_Tier_Spending
FROM 
	SpendingTiers
GROUP BY 
	Spending_Tier
ORDER BY
	CASE WHEN Spending_Tier = 'high tier' THEN 1
		WHEN Spending_Tier = 'mid tier' THEN 2
		ELSE 3
		END


