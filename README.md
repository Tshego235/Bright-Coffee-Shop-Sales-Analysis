# ☕ Bright Coffee Shop Sales Analysis – Case Study

## 📌 Project Overview

This project focuses on analyzing transactional sales data from a coffee shop to generate actionable business insights. The case study was designed to support a newly appointed CEO in making data-driven decisions to improve revenue, optimize product performance, and identify key sales trends.

The dataset contains daily transaction records, including product details, quantities sold, pricing, and timestamps. The goal of this analysis is to uncover patterns in customer purchasing behavior and provide strategic recommendations.

---

## 🎯 Objectives

The main objectives of this case study were to:

* Identify top-performing and underperforming products
* Analyze revenue generation across product categories
* Determine peak sales periods during the day
* Understand sales trends over time
* Provide actionable recommendations to improve business performance

---

## ⚙️ Methodology

### 1. Data Planning & Architecture

* Designed a **data flow and architecture diagram** using Miro
* Defined:

  * Data source (Excel dataset)
  * ETL pipeline (data cleaning and transformation)
  * Storage layer (Databricks)
  * Analysis and visualization tools

---

### 2. Data Processing (Databricks & SQL)

* Converted raw Excel data into CSV format
* Loaded dataset into Databricks environment
* Performed data cleaning and transformation:

  * Converted `unit_price` values (e.g., '3,1' → 3.1)
  * Created `transaction_time_bucket` (30-minute intervals)
  * Calculated `total_amount = unit_price × transaction_qty`
* Used SQL queries to:

  * Aggregate revenue by product type
  * Group sales by time intervals
  * Calculate total units sold

---

### 3. Data Analysis (Excel / Visualization Tools)

* Exported processed dataset to Excel
* Created pivot tables and dashboards to visualize:

  * Revenue by product category
  * Peak sales time intervals
  * Quantity sold per product
  * Best-selling products
* Used charts and graphs to present findings clearly

---

### 4. Presentation & Reporting

* Developed a presentation summarizing:

  * Approach and methodology
  * Key insights supported by visualizations
  * Business recommendations
* Prepared supporting documents including SQL scripts and processed datasets

---

## 📊 Key Insights

* **Top-performing products** contributed the majority of revenue, indicating strong customer preference patterns
* **Peak sales periods** were observed during specific time intervals (e.g., morning and lunch hours)
* Certain products consistently underperformed, highlighting opportunities for promotion or removal
* Sales trends showed clear patterns tied to time of day, suggesting operational optimization opportunities

---

## 💡 Recommendations

* Launch **marketing campaigns during low-sales periods** to boost traffic
* Increase inventory and focus on **best-selling products**
* Promote or bundle **underperforming items** to improve sales
* Optimize staffing based on **peak transaction times**

---

## 🚀 Next Steps

* Implement customer loyalty programs based on purchasing patterns
* Integrate real-time dashboards for continuous monitoring

---

## 🛠️ Tools & Technologies Used

* **Data Processing & Storage:**

  * Databricks
  * SQL

* **Data Analysis & Visualization:**

  * Microsoft Excel (Pivot Tables, Charts)

* **Planning & Design:**

  * Miro (Architecture Diagram)

* **Presentation & Reporting:**

  * Microsoft PowerPoint
  * Canva

---

## 📁 Project Deliverables

* Data Flow & Architecture Diagram (Miro)
* Processed Dataset (Excel / Google Sheets)
* SQL Scripts
* Data Visualizations (Dashboards / Charts)
* Final Presentation (PowerPoint)

---

## 📌 Summary

This project successfully transformed raw transactional data into meaningful insights that support strategic business decisions. By leveraging data processing, SQL analysis, and visualization techniques, the case study identified key revenue drivers, customer behavior trends, and opportunities for business growth.

The insights and recommendations provided can help improve operational efficiency, increase revenue, and enhance overall customer experience.

---
