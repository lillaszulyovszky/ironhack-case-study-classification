# Ironhack Project - Classification Case Study

## by Josephine Biedermann & Lilla Szulyovszky

## Dataset

The data set consists of information on 18,000 current bank customers in the study. These are the definitions of data points provided:

- Customer Number: A sequential number assigned to the customers (this column is hidden and excluded – this unique identifier will not be used directly).
- Offer Accepted: Did the customer accept (Yes) or reject (No) the offer. Reward: The type of reward program offered for the card.
- Mailer Type: Letter or postcard.
- Income Level: Low, Medium, or High.
- Bank Accounts Open: How many non-credit-card accounts are held by the customer.
- Overdraft Protection: Does the customer have overdraft protection on their checking account(s) (Yes or No).
- Credit Rating: Low, Medium, or High.
- Credit Cards Held: The number of credit cards held at the bank.
- Homes Owned: The number of homes owned by the customer.
- Household Size: The number of individuals in the family.
- Own Your Home: Does the customer own their home? (Yes or No).
- Average Balance: Average account balance (across all accounts over time). Q1, Q2, Q3, and Q4
- Balance: The average balance for each quarter in the last year


**Insights to explore**

-  The bank wants to understand the demographics and other characteristics of its customers that accept a credit card offer and that do not accept a credit card.
-  There are also other potential areas of opportunities that the bank wants to understand from the data.

**Modeling Plan:**
iterative

1st modeling:
    - with all features
    
2nd modeling: 
    - try without the quarter features
    - turn numerical to categorical

3rd modeling:

## Cleaning steps
- drop 'customer_number' column
- drop null values

## Summary of Findings from Visual Assessment

We concluded we might need to go back to the cleaning steps and
- drop the quarter columns
- turn a couple of numerical columns (bank_accounts_open, credit_card_holds, homes_owned, household_size) to categorical (1 to 'one', etc)

because it will cause noise in our model.

ADD tableau link

## Key Insights for Presentation

