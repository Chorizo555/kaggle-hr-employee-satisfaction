# Kaggle HR Analytics – Predict Employee Satisfaction

## Overview

This project analyzes the **HR Analytics In-Class Practice** Kaggle competition.

The objective is to **predict employee satisfaction scores** using organizational and behavioral variables.

Evaluation metric: **Root Mean Squared Error (RMSE)**

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

