
# Real-Time Sales Analytics

## Overview
Real-Time Sales Analytics is a complete data analysis project focused on uncovering actionable sales insights for an e-commerce business. The project leverages SQL (MySQL), Python (Jupyter Notebook), and Google Looker Studio to support business teams with sales trends, product analytics, reduction analyses, and targeted customer reporting.

## Features
- **Top Product Analysis:** Identify the best-selling products in strategic categories (e.g., Mobiles & Tablets).
- **Sales Decrease Investigation:** Track and visualize products/categories experiencing sales declines for inventory management.
- **Customer Insights:** List customers who drop off at checkout for personalized marketing.
- **Campaign Performance:** Compare weekday vs weekend sales performance across important periods.
- **Sales Trend Visualization:** Display time series sales for all key categories.
- **Ready-to-Use Dashboards:** Executive-friendly interactive dashboards for business review (PDF, CSV, Google Looker Studio).

## Technology Stack
- **Python** (data analysis, pandas, matplotlib in Jupyter Notebook)
- **MySQL** (data storage, SQL analytics)
- **Google Looker Studio** (dashboards)
- **CSV** (for structured exports)

## Repository Structure
├── Sales Analytics .ipynb # Python analysis notebook
├── finaldb.sql # MySQL schema and data dump
├── tasks.sql # Core SQL queries for analysis
├── Final_Dashboard.pdf # Completed, visual dashboard (sample)
├── Sales_Dashboard-1.pdf # Earlier version dashboard (sample)
├── top_5_products_mobile_tablets.csv # Top products data export
├── top_20_sales_decrease.csv # Decrease analysis export
├── largest_decrease_sales_periods.csv # Period decrease export
├── sales_trend_category.csv # Category trend export
├── Q4WeekdaayandWeekendSales.csv # Q4 sales export
├── IncompletePayment.csv # Customer drop-off export
├── training/ # Practice & test data/scripts
└── README.md # You are here!
undefined


## Project Tasks
1. **Top 5 Products by Sales (2022, Mobiles & Tablets):**  
   Horizontal bar chart of top sellers using valid orders only.

2. **Sales Decrease in 'Others' Category (2021-2022):**  
   Products with biggest year-on-year decrease; clear visual ranking.

3. **Customer Checkout Drop-off (2022):**  
   Customer IDs and dates for marketing team follow-up.

4. **Weekend vs Weekday Sales Analysis (Q4-2022):**  
   Grouped bar chart for campaign effectiveness.

5. **Products with Largest Decrease (Year Comparison):**  
   Analysis and visualization of drop in sales by product.

6. **Sales Trend by Category (2022):**  
   Monthly or weekly time series by main category.

## Getting Started

### Clone the Repository
git clone https://github.com/D4C-WOU/Real-Time-Sales-Analytics.git


### Import Database

Use `finaldb.sql` in MySQL to create schema and load sales data.

### Run Analysis Notebook

- Open `Sales Analytics .ipynb` in Jupyter Notebook or compatible IDE.
- Update file paths/data sources as needed.
- Run cells to execute analysis workflow.

### Dashboards and Exports

- Review insights in `Final_Dashboard.pdf`.
- Use CSV exports for Google Looker Studio or other BI tools.

## License
This project is made for academic and demonstration purposes only.

---

*For queries, raise an issue or contact the project maintainer via GitHub.*
