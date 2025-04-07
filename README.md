# consumer-spending-sql

# 🧾 Consumer Spending Analysis (SQL Project)

A data-driven exploration of consumer transactions focusing on key business metrics like revenue drivers, payment preferences, customer behaviors, identifying high value customers and spending tiers.

This project showcases how SQL can be used to answer practical business questions, deliver actionable insights, and support strategy across product, marketing, and customer success teams.

---

## 📌 Table of Contents

- Overview  
- Dataset Description  
- Data Preparation  
- Business Questions Answered  
- Insights & Recommendations     
- Contact  

---

## 📖 Overview

This project was designed to demonstrate how SQL can answer critical business questions and uncover meaningful trends in consumer spending.

The data contains over 10,000 transaction records, capturing detailed purchase behaviors. The project focuses on:

- Identifying revenue-driving categories
- Exploring customer payment habits
- Segmenting customers by value
- Comparing sales across time periods and channels

The dataset was cleaned in Excel before being imported into SQL. All queries and result screenshots are documented in separate `.sql` and `.docx` files.

---

## 📊 Dataset Description

**File:** `cleaned_consumer_spending.csv`  
**Total Records:** ~10,000  

**Key Columns:**

- `Customer_ID` – Unique customer identifier  
- `Category` – Broad purchase category (e.g., Groceries, Fitness)  
- `Item` – Specific product or service purchased  
- `Quantity` – Number of units purchased  
- `Price_Per_Unit` – Unit price of item  
- `Total_Spent` – Quantity × Price per unit  
- `Payment_Method` – Cash, credit, debit, or digital wallet  
- `Location` – Online, In-store, Mobile App  
- `Transaction_Date` – Date of purchase (YYYY-MM-DD)

**Data Quality Steps:**
- Removed duplicates
- Corrected data types
- Handled nulls values
- Verified monetary calculations

---

## 🛠 Data Preparation

- Cleaned in Excel (trimmed fields, handled missing values, fixed datatypes)
- Imported into SQL for querying
- Verified column types: `DATE` for transaction date, `DECIMAL` for prices

---

## ❓ Business Questions Answered

Each of the following questions was answered using SQL queries and documented results.

---

### 1. What category generates the most revenue?

**Insight:**  
"Shopping" is the dominant revenue category, generating **$22.65 million**, far ahead of others.
"Housing & Utilities" comes second in the revenue category, generating **$835k**.
"Groceries" has the least contribution in the revenue category, generating **$17k**.

**Recommendations:**  
- Subcategorize Shopping to pinpoint specific product lines driving revenue  
- Reinvest profits into underperforming mid-tier categories (e.g., Fitness, Travel)  
- Use Shopping’s traffic to upsell items from smaller categories, i.e complemaentary items from smaller categories can be added to the shopping category to boost sales

---

### 2. What payment methods do consumers prefer?

**Insight:**  
All methods are well used. **Digital Wallet (2,560)** and **Credit Card (2,499)** slightly lead over Cash and Debit.

**Recommendations:**  
- Ensure a smooth checkout for all methods  
- Partner with e-wallet providers to offer discounts or cashback.
- Preserve support for cash/debit to remain inclusive. Ths is to provide healthy competition to all modes of payment.

---

### 3. What products or services are most popular?

**Insight:**  
- **Dentist Visits** have the highest frequency with a purchase count of 278 and a revenue of ($76K)
- **Workout Equipment** leads in revenue ($223K) and a purchase count of 272

**Recommendations:**  
- Upsell related services (e.g., Personal Trainer + Equipment bundles)  
- Offer loyalty programs for frequent, low-ticket purchases (e.g., coffee, fast food)  
- Invest in health/wellness items, as they show strong consumer interest

---

### 4. Where do customers prefer to shop — online, mobile, or in-store?

**Insight:**  
Spending is nearly evenly split:
- **Online:** $8.76M  
- **Mobile App:** $8.57M  
- **In-store:** $8.02M

**Recommendations:**  
- Ensure consistent pricing, promotions, and user experience  
- Optimize Mobile App: The near parity with online suggests further potential if you enhance app usability. 
- Use In-store exclusives (e.g., demos or events) to boost foot traffic

---

### 5. Who are the top customers?

**Insight:**  
Top customers like **CUST_0033 ($676K)** and **CUST_0163 ($589K)** account for a large revenue share.
**CUST_0032 ($426)** and **CUST_0200 ($382k)** account for the least revenue share 

**Recommendations:**  
- Create tiered loyalty or VIP reward programs  
- Provide personalized recommendations based on past purchases  
- Monitor changes in the activities of the two least in the revenue share for signs of churn

---

### 6. How frequently do customers purchase?

**Insight:**  
Most customers purchase every **14–17 days**, with some every **10–12 days**.

**Recommendations:**  
- Trigger personalized reminder emails or SMS at the average frequency  
- Offer discounts to customers whose purchase cycles are lengthening  

---

### 7. Do people spend more on weekdays or weekends?

**Insight:**  
- **Weekdays:** $18.5M across 7,108 transactions  
- **Weekends:** $6.85M across 2,892 transactions

**Recommendations:**  
- Capitalize on weekday traffic with targeted flash sales  
- Use weekend campaigns (e.g., social or group deals) to increase off-peak sales  
- Time promotions around lunchtime or evenings for best results
- Strengthen the workforce during the weekdays to match the demand of your customers

---

### 8. What are the monthly sales trends?

**Insight:**  
- Peaks: **June 2023 ($1.66M)** and **Feb 2024 ($1.40M)**  
- Q4 months (Oct–Dec) consistently perform well  
- Some months have high transactions but low spend, indicating smaller ticket purchases

**Recommendations:**  
- Push seasonal campaigns in peak months  
- Run special offers during low months (e.g., May, August) to drive demand  
- Analyze low-avg ticket size months for upsell/cross-sell opportunities

---

### 9. What are the quarterly trends?

**Insight:**  
- **Q4** is consistently the strongest quarter  
- Q1–Q3 results vary, with some growth and some decline year-over-year

**Recommendations:**  
- Focus efforts and inventory for Q4 demand  
- Launch mid-year promotions to stabilize Q2/Q3 

---

### 10. How are customers segmented by spending tiers?

**Insight:**  
- **High Tier (>$50K):** 116 customers, $23.66M  
- **Mid Tier ($10K–$50K):** 80 customers, $1.66M  
- **Low Tier (<$10K):** 4 customers, $33.6K

**Recommendations:**  
- Retain and reward High Tier customers  
- Move Mid Tier up with exclusive bundles or limited-time offers  
- Onboard Low Tier with guided experiences and incentives

---

## 📎 Data Source

- Anonymized dataset simulating consumer spending behavior  
- Cleaned and pre-processed manually in Excel

---

## 🧠 Conclusion

This project demonstrates how SQL alone can uncover deep business insights when applied to well-structured transaction data. With just Excel and SQL, we explored customer behavior, market trends, and value segmentation — all critical areas for product, marketing, and customer strategy teams.

---

## 🗂 Files Included

- `data/cleaned_consumer_spending.csv` — Final dataset  
- `sql/consumer_spending_queries.sql` — All analysis queries  
- `docs/consumer_spending_report.docx` — Screenshots, query results 
- `README.md` — This documentation

---

## 📬 Contact

- **GitHub:** [MondayTheAnalyst](https://github.com/MondayTheAnalyst)  
- **Email:** *obotmonday680@gmail.com*  

---
