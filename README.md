# **Credit-Card-Fraud-Detection**
## **Executive Summary**
This report presents an analysis of credit card transaction data to identify patterns of fraudulent activity. The dataset contains anonymized features representing transaction details, with each record labeled as fraudulent (Class = 1) or non-fraudulent (Class = 0). The goal is to derive actionable insights that can enhance fraud detection systems and inform risk management strategies.
## **Objectives**
1.	Quantify the extent of fraudulent activity in the dataset.
2.	Identify trends in fraudulent transactions over time.
3.	Compare the transaction amounts of fraud vs. non-fraud activities.
4.	Support data-driven recommendations for fraud prevention.
## **Data Source**
The dataset was obtained from Kaggle’s Credit Card Fraud Detection Dataset, originally sourced from European cardholders' transactions in September 2013. (https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
## **Methodology**
1.	Data Preparation: Imported into SQL and Power BI for analysis.
2. Measures & Calculations: Created DAX measures to calculate total transactions, fraud counts, non-fraud counts, fraud percentages, and total fraud amount.
3.	Visualization: Developed charts to highlight fraud trends, proportions, and amount distributions using Power BI
## **Analysis and Key Findings**
1.	Total Transactions: 284,807
2.	Fraudulent Transactions: 492 (~0.172%)
3.	Total Fraud Amount: €60,787.
4.	Fraudulent transactions tend to have significantly higher average amounts than non-fraudulent ones in certain cases.
5.	Class imbalance is extreme — fraud cases form less than 0.2% of all transactions, requiring specialized detection approaches.
## **Recommendation**
1.  Implement real-time transaction monitoring to flag suspicious activities.
2.  Use machine learning models to predict and detect fraudulent transactions.
3.  Trigger alerts for high-value, unusual location, or abnormal spending transactions.
4.  Increase fraud monitoring during high-risk hours or days.
5.  Educate customers on recognizing and avoiding fraud attempts.
6.  Regularly update fraud detection models with the latest patterns.
7.  Collaborate with other financial institutions to share anonymized fraud trends.
## **Conclusion**
The dataset reveals that while fraudulent transactions are rare, they represent a significant financial risk. Detecting them requires specialized analytics techniques, such as anomaly detection, due to the extreme class imbalance. The insights here provide a basis for building machine learning models and implementing targeted fraud prevention measures in real-world banking systems.
