# Problem
Traditional default detection systems rely on credit scores and other historical data to assess a user's risk of default. However, these systems are often inaccurate and can lead to false positives. Additionally, they do not take into account a user's future financial situation.

# Solution
We propose a new payment default detection system that uses zero-knowledge proofs (ZKPs) and Analytical Data based prediction to calculate two scores: a Transaction Score and a ZK Proof Score.

1. Transaction Score: This score is calculated by analyzing a user's historical transaction data, including both credits and debits. It takes into account the user's behavior and historical defaults to compute a score from 0 to 100. A score of 100 signifies an excellent credit history, while a score of 0 indicates a poor credit history. It would be like a CIBIL score but normalized out of 100 and also valid for debits.
2. ZK Proof Score: This score is calculated using ZKPs to prove that a user has sufficient funds to cover a transaction without revealing their account balance. It also takes into account the user's expected future payments to create a cryptographic signature, immune to spoofing, that serves as proof of the algorithm-generated score.

These two scores are then combined to calculate an Overall Score. The central authority, such as a bank, can set a transaction threshold. Transactions only proceed if the Overall Score exceeds this threshold.

# Scopes of the Solution
The solution aims to predict and prevent the default by estimating the chances of it occurring before a transaction. The solution is currently presented as an Android app and a Web app as well. These apps could be considered as admin dashboards. Suppose, if an admin wants to initiate a transaction between 2 different accounts for a specific amount, they can check the compatibility and analyse the risk using our app. The admins could see the transactions underwent by any user (These transactions are currently gathered from a dataset present in Kaggle), and then the admins could initiate a new transaction.

Once initiated, our machine learning model would take the inputs as (account numbers, amount) and return a transaction score based on the probability of the transaction being successful in future. The other score (ZK Score) would be a cryptographically signed proof which shall state that the account has enough balance to debit the amount. ZK Score is currently not implemented fully and simple calculated values are used. 

The admins can then set the threshold value of overall score and the weights for calculation of the overall score within the app itself, and then check the compatibility. The app shall then tell the overall score and if it crosses the required threshold of overall score. It will also show a statement summarizing the transaction details and risk factor involved.

This ensures a perfect plan for predicting the default or transaction failure in advance and hence preventing it!

# The Machine Learning Model
We got our data from Kaggle and modified it a bit using different methods of feature augmentation. The CSV data has the following relevant fields (Account number, Date of transaction, Transaction Amount, Debit/Credit, Success/Failure). The model trained on this dataset helps to produce an overview of the behaviour of the user, hence predicting the score accordingly. We've used Scikit Learn library for training our model, google colaboratory as our workspace for training it. Earlier we thought we'll require a flask based backend for querying our model, but the app framework (flutter) provided us native methods to do so within the app itself. 

# Real Life Implementation
In actuality, if this solution is to be implemented, the admin part should mostly not be like a User Interface. It should be a secure service deployed on the backend. Moreover, actual data of users would be needed to train the model and learn about each user's personal behaviour. The ZK Proof part must ensure anonymity of the sender's data to the receiver's end.

We've currently built a solution which is efficient to demonstrate and to explain its use cases well enough!

# Tech Stack
1. The app for both android and web is built on flutter.
2. The machine learning model is trained using Scikit Learn library.
3. The web application is deployed on Netlify.
4. The model training part took place on google colab.
5. The dataset was obtained from Kaggle and modified by us accordingly