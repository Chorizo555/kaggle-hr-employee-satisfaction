# Kaggle HR Analytics – Predict Employee Satisfaction

## Overview

This project analyzes the **HR Analytics In-Class Practice** Kaggle competition.

The objective is to **predict employee satisfaction scores** using organizational and behavioral variables.

Evaluation metric: **Root Mean Squared Error (RMSE)**

Problem Type: **Regression**

Public Score achieved: **20.16**

---

## Dataset

Source:  
https://www.kaggle.com/competitions/hr-analytics-in-class

Files used:

- `train.csv` – training dataset  
- `test_X.csv` – test dataset  

Note:  
Raw data are **not included in this repository** due to Kaggle competition rules.

---

## Method

A **multiple linear regression model** was implemented using **Stata**.

Key features:

- employee evaluation score
- number of projects
- average monthly hours
- time spent at company
- work accident history
- promotion in last 5 years
- department
- salary level
- employee turnover indicator

To capture a **non-linear relationship**, a quadratic term was introduced:

```stata
gen project_sq = number_project^2
```

This allows the model to represent an **inverse U-shaped relationship** between project workload and employee satisfaction.

## Key Findings

### 1. Employee turnover strongly predicts satisfaction

Employees who left the company show **substantially lower satisfaction levels**.

### 2. Workload shows a non-linear relationship

Satisfaction increases with project involvement initially, but declines when workload becomes excessive.

Estimated optimal workload:

~3–4 projects
### 3. Model performance
Public RMSE: 20.16

The model explains approximately **22% of variation** in employee satisfaction.

---

## Tools

- **Stata 19.5 BE**
- Kaggle platform

---

## Reproducibility

- The full analysis pipeline is available in:
   `analysis.do`

Steps:
1. Load training data
2. Preprocess categorical variables
3. Estimate regression model
4. Apply model to test dataset
5. Generate Kaggle submission file

---

## Repository Structure
- analysis.do
- README.md
---

## Author
T.Tohru
