# Ironhack Project - Classification Case Study :credit_card: :moneybag: :euro:
by [Josephine Biedermann](https://github.com/JosephineBiedermann) & [Lilla Szulyovszky](https://github.com/lillaszulyovszky), April 2021

![Alt text](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/images/Readme_header.png?raw=true "Header")
<Header picture>
    + one sentence summary of problem solved
    
## Table of content
<ul>
<li><a ref="#eda">1. Project brief</a></li>
<li><a ref="#cleaning">2. Data</a></li>
<li><a ref="#prep">3. Process & tools</a></li>
<li><a ref="#modelling">4. Visualization</a></li>
<li><a ref="#modelling">5. Key take aways</a></li>
</ul>

## Project brief
**Scenario:**
We are risk analysts employed at a bank. Our team is focusing on credit card services.
We are given data from 18.000 of our customers and our boss wants us to work out how we can improve our credit card marketing campaign.

**Challenge:**
Use the given data set to find out what characteristics impact the customers decision on accepting or declining our credit card offer.

**Problem:**
Can we predict if our customer accepts or declines the credit card offer?

Further project details such as deliverables can be found [here](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/project_details)

## Data

The data set consists of information on 18,000 current bank customers with the following features:

MAYBE GRAPHS here??? instead of list

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

[Link to data set folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/data_sets)

## Process & Tools

Flowchart

Tools
 - Database : MyWorkbench - [Link to SQL folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/sql)
 - Vizualizations : Tableau / seaborn / matplotlib
 - Code : Jupyter Notebook - [Link to code folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/code)

## Visualizations

Tableau & from notebook

[Link to tableau](https://public.tableau.com/profile/szulyovszky.lilla#!/vizhome/CaseStudyClassification_Lilla/Task9-Dashboard2?publish=yes)
Link to presentation

## Key Take Aways

### 1. Our model can predict a customer accepting or declining the credit card offer with an accuracy of 84%
### 2. We suspect the following features to impact the customers decision to accept the most:
  - mailer type
  - avg balance
  - income level
  - reward

<br/><br/><br/>
# 

**Thank you for reading!** <br/>
If you have any questions, please reach out to us.<br/><br/>
Team :mage_woman:
