# Ironhack Project - Classification Case Study :credit_card: :moneybag: :euro:
by [Josephine Biedermann](https://github.com/JosephineBiedermann) & [Lilla Szulyovszky](https://github.com/lillaszulyovszky), April 2021
<br/><br/>
## Prediciting if a bank customer accepts or declines an offer for a new credit card
![Alt text](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/images/Readme_header.png?raw=true "Header")

    
## Table of content

- [Project Brief](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/README.md#project-brief)
- [Data](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/README.md#data)
- [Process & Tools](https://github.com/lillaszulyovszky/ironhack-case-study-classification#process--tools)
- [Visualization](https://github.com/lillaszulyovszky/ironhack-case-study-classification#visualizations)
- [Key Take Aways](https://github.com/lillaszulyovszky/ironhack-case-study-classification#key-take-aways)

## Project Brief
**Scenario:**
We are risk analysts employed at a bank. Our team is focusing on credit card services.
We are given data from 18.000 of our customers and our boss wants us to work out how we can improve our credit card marketing campaign.

**Challenge:**
Use the given data set to find out what characteristics impact the customers decision on accepting or declining our credit card offer.

**Problem:**
Can we build a machine learning model that predicts if our customer accepts or declines the credit card offer?<br/><br/>

Further project details such as deliverables can be found [here](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/project_details)

## Data

Leveraging on the [data](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/data_sets) we were provided with, we used Tableau's and Python's data visualisation tools to explore the relationships between features. To find out more about the distribution of the important features we highlighted, you can have a look on our Tableau dashboard below:
[Link to tableau](https://public.tableau.com/profile/szulyovszky.lilla#!/vizhome/CaseStudyClassification_Lilla/Task9-Dashboard2?publish=yes) 

![Alt text](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/images/metrics_visuals/tableau_screenshot.png?raw=true)

For further details on all features, please refer to the [notebook](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/code/Case%20Study%20-%20Classification.ipynb).

## Process & Tools

**Process**
Our ways of working included an iterative/agile approach circling through the following steps:
- Github: set up our Github Repo to collaborate on. We did 104 commits in 4 days. 
- Trello: set up our Trello board to help us keep sane and reprioritise daily.
- SQL: started with the independent task of completing the SQL Queries
- EDA: assessment of dataframe to prepare for cleaning
- Data cleaning & wrangling in Python: drop 'customer_number' column, drop null values, convert float columns to int
- Prepocessing: 3 methods - Normalizer, Dummies and SMOTE
- Machine Learning Model: using scikit learn
**- iteration 1 (X)**
In our first iteration we only used preprocessing and encoding 
and we used this as a benchmark for the following iterations as a comparison
**- iteration 2 (X_i2)**
SMOKE sampling to improve the imbalance of the target
**- iteration 3 (X_i3)**
dropping quarterly balance columns to reduce noise
**- iteration 4 (X_i4)**
encoding numerical features to categorical ones
**- iteration 5 (X_i5)**
using KNN on the i3

![Alt text](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/images/presentation/workflow.png?raw=true)

Tools
 - **Database:** MyWorkbench - [Link to SQL folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/sql)
 - **Vizualizations:** Tableau / seaborn / matplotlib
 - **Code:** Jupyter Notebook - [Link to code folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/code)

## Visualizations

Tableau & from notebook

[Link to tableau](https://public.tableau.com/profile/szulyovszky.lilla#!/vizhome/CaseStudyClassification_Lilla/Task9-Dashboard2?publish=yes) <br/>
Link to presentation

## Key Take Aways

### 1. Our model can predict a customer accepting or declining the credit card offer with an accuracy of 84%
### 2. We suspect the following features to impact the customers decision to accept the most:
  - mailer type
  - avg balance
  - income level
  - reward
# 

**Thank you for reading!** <br/>
If you have any questions, please reach out to us.<br/><br/>
Team :mage_woman:
