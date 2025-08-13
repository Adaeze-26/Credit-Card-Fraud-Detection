use Adaeze
go
Select *From [Credit card fraud detection]

--Q1 What is the average transaction time in the dataset?
select Round (Avg(Time_s), 0) from [Credit card fraud detection]

--Q2 What is the least amount made in the dataset with a response variable(class) of 1
select Min(Amount) from [Credit card fraud detection] where Class = 1

--Q3 Determine the number of fradulent and Non-fraudulent transactions in the dataset
select 'Fraudulent_transactions' as transaction_type,
count('Fraudulent_transactions') as Count  from [Credit card fraud detection] where Class=1

UNION ALL

select  'Non-Fraudulent Transactions' as transaction_type,
count('Non-Fraudulent_transactions') as Count  from [Credit card fraud detection] where Class=0

--Q4 Average transaction amount by fraud status
SELECT 
    'Fraudulent Transactions' AS transaction_type,
    ROUND(AVG(Amount), 2) AS avg_amount
FROM [Credit card fraud detection]
WHERE Class = 1

UNION ALL

SELECT 
    'Non-Fraudulent Transactions' AS transaction_type,
    ROUND(AVG(Amount), 2) AS avg_amount
FROM [Credit card fraud detection]
WHERE Class = 0

--Q5 Determine the percentage of the fraud in the dataset
SELECT  ROUND(
        (SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS fraud_percentage
FROM [Credit card fraud detection]

--Q6 Top five fraudulent transactions
SELECT top(5)Amount, Time_s FROM [Credit card fraud detection]
WHERE Class = 1
ORDER BY Amount DESC
