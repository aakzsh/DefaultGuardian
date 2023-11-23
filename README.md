# DEFAULT GUARDIAN
lets you predict if a transaction is prone to default and gives a score to assess the risk.

# Demo app links
1. Android APK link (https://drive.google.com/file/d/1KQeqyF3FNwNqGiEDPK5FI6pUUXMYn1x2/view?usp=drive_link)
2. Web App link (https://defaultguardian.netlify.app)

# Problem
Traditional default detection systems rely on credit scores and other historical data to assess a user's risk of default. However, these systems are often inaccurate and can lead to false positives. Additionally, they do not take into account a user's future financial situation.

# Solution
We propose a new payment default detection system that uses zero-knowledge proofs (ZKPs) and Analytical Data based prediction to calculate two scores: a Transaction Score and a ZK Proof Score.

1. Transaction Score: This score is calculated by analyzing a user's historical transaction data, including both credits and debits. It takes into account the user's behavior and historical defaults to compute a score from 0 to 100. A score of 100 signifies an excellent credit history, while a score of 0 indicates a poor credit history. It would be like a CIBIL score but normalized out of 100 and also valid for debits.
2. ZK Proof Score: This score is calculated using ZKPs to prove that a user has sufficient funds to cover a transaction without revealing their account balance. It also takes into account the user's expected future payments to create a cryptographic signature, immune to spoofing, that serves as proof of the algorithm-generated score.

These two scores are then combined to calculate an Overall Score. The central authority, such as a bank, can set a transaction threshold. Transactions only proceed if the Overall Score exceeds this threshold.

# Structure
The repository contains different parts, all of which are working together in order to achieve the common goals and outcomes of the project. Dive into each directory to learn about them by reading their README files.
