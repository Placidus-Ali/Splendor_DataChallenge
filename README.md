# Trial Activation & Conversion Driver Analysis

**Splendor Analytics Data Analyst Community Challenge**

---

## Overview
This project analyzes behavioral data from organizations using a 30-day free trial of a workforce management platform. The goal is to understand **what defines a successful trial experience** and identify the key behaviors that lead to conversion into paying customers.

This analysis focused on defining **Trial Activation** which is a measurable state indicating that an organization has experienced the platform’s core value.

---

## Objectives

* Identify **key behavioral drivers of conversion**
* Define **Trial Goals** based on real product usage
* Build scalable **SQL models** to track activation
* Provide **actionable insights** for product and growth teams

---

## Dataset Description

The dataset contains **event-level behavioral data** for organizations during their trial period, including:

* Organization ID
* Activity Name
* Timestamp of activity
* Trial start and end dates
* Conversion status

---

## Methodology

### Data Cleaning & Preparation

* Standardized column names
* Converted datetime fields
* Removed duplicate records
* Validated trial duration consistency
---

### Feature Engineering

The dataset was transformed from event-level to **organization-level features**, including:

* **Engagement Metrics**

  * Total number of events (`total_events`)
  * Number of active days (`active_days`)

* **Feature Exploration**

  * Number of unique activities (`unique_activities`)

* **Behavioral Indicators**

  * Binary flags for key product actions (e.g., shift creation, messaging)
---

### Exploratory Analysis

* Compared behavior between converted and non-converted organizations
* Identified that **individual feature usage alone is a weak predictor**
* Discovered that **engagement intensity and consistency are critical factors**
---

### Modeling Approach

Three machine learning models were trained to identify conversion drivers:

* Logistic Regression 
* Random Forest 
* Gradient Boosting (high predictive performance)

Model evaluation was performed using:

* Accuracy
* Precision
* Recall
* F1-score

With Gradient Boosting having the high performance.
---

### Key Findings

* **Total engagement (total_events) is the strongest predictor of conversion**
* **Consistency of usage (active_days) significantly impacts outcomes**
* Individual actions (e.g., shift creation) are common across all users and **do not strongly differentiate conversion**
* Conversion is driven by **depth of usage across multiple workflows**, not isolated actions

---

## Trial Goals Definition

Based on the analysis, the following trial goals were defined:

| Goal                | Description                |
| ------------------- | -------------------------- |
| High Engagement     | Total events ≥ 20          |
| Consistent Usage    | Active on ≥ 5 days         |
| Core Product Usage  | Created at least one shift |
| Workflow Engagement | Approved shifts            |
| Collaboration       | Sent at least one message  |

These goals represent progression from **basic usage to meaningful operational engagement**.

---

## Trial Activation

An organization is considered **Activated** if it meets *all* defined trial goals.

Activation = All Trial Goals Completed


### Validation

Activated organizations show **significantly higher conversion rates** compared to non-activated organizations, confirming that activation is a strong leading indicator of revenue.

---

## Business Insights

* Conversion is driven by **engagement intensity and consistency**, not isolated actions
* Users must progress through **core product workflows** to realize value
* Early inactivity is a strong signal of non-conversion

---

## Recommendations

* Improve onboarding to drive **early engagement within first few days**
* Encourage exploration of **multiple product features**
* Guide users toward **core workflows (scheduling, approvals, communication)**
* Monitor engagement metrics to **identify and support at-risk trial users**

---

## Tools

* Python (Pandas, NumPy, Scikit-learn)
* Jupyter Notebook
* SQL for data modeling layer

---

## Conclusion

This project demonstrates that **trial success is not defined by single actions**, but by a combination of:

* High engagement
* Consistent usage
* Progression into core operational workflows

By defining and validating Trial Activation, this analysis provides a **scalable framework for predicting conversion and improving product onboarding strategies**.

