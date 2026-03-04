**************************************************
* Kaggle HR Analytics: Predict Employee Satisfaction
* Author: Toru
* Software: Stata 19
**************************************************

clear all
set more off

**************************************************
* 1. Load training data
**************************************************

import delimited "train.csv", clear

**************************************************
* 2. Data preprocessing
**************************************************

encode salary, gen(salary_n)
encode department, gen(department_n)

gen project_sq = number_project^2

**************************************************
* 3. Regression model
**************************************************

reg satisfaction_level ///
last_evaluation ///
number_project ///
project_sq ///
average_montly_hours ///
time_spend_company ///
work_accident ///
left ///
promotion_last_5years ///
salary_n ///
department_n

**************************************************
* 4. Load test data
**************************************************

import delimited "test_X.csv", clear

**************************************************
* 5. Apply same preprocessing
**************************************************

encode salary, gen(salary_n)
encode department, gen(department_n)

gen project_sq = number_project^2

**************************************************
* 6. Predict satisfaction
**************************************************

predict satisfaction_pred

**************************************************
* 7. Clip predictions (0–100)
**************************************************

replace satisfaction_pred = 0 if satisfaction_pred < 0
replace satisfaction_pred = 100 if satisfaction_pred > 100

**************************************************
* 8. Create submission file
**************************************************

keep id satisfaction_pred

rename satisfaction_pred yhat

export delimited using "submission.csv", replace

**************************************************
* End of file
**************************************************