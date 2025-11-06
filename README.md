# Real-Time Sales Analytics

A comprehensive data analytics project designed to deliver actionable sales insights for e-commerce businesses. Built by [D4C-WOU](https://github.com/D4C-WOU), the repository combines SQL-driven data modeling, Python-based analysis, and interactive dashboards with Google Looker Studio to empower business and analytics teams.

---

## 📦 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Project Tasks](#project-tasks)
- [Getting Started](#getting-started)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Prepare the Database](#2-prepare-the-database)
  - [3. Run Data Analysis Notebook](#3-run-data-analysis-notebook)
  - [4. Explore Dashboards and Exports](#4-explore-dashboards-and-exports)
- [File Structure](#file-structure)
- [Usage & Customization](#usage--customization)
- [License](#license)
- [Contact](#contact)

---

## Overview

**Real-Time Sales Analytics** is tailored for uncovering sales patterns, investigating product performance, and visualizing business-critical trends using a unified workflow. It utilizes:
- **SQL (MySQL)** for robust data storage and querying.
- **Python/Pandas** for flexible data manipulation, analysis, and visualization.
- **Google Looker Studio** for executive-friendly interactive dashboards.
- **Jupyter Notebook** workflow (`Sales Analytics.ipynb`).
- **CSV/PDF exports** for reporting and business intelligence integration.

---

## Features

- **Top Product Analysis:** Identify the best-sellers in key markets (e.g., Mobiles & Tablets).
- **Sales Decrease Investigation:** Track products or categories with significant sales drop for actionable inventory management.
- **Customer Insights:** Detect checkout drop-offs to support personalized marketing.
- **Campaign Performance:** Distinguish between weekday vs weekend sales for campaign analysis.
- **Sales Trend Visualization:** Monthly/weekly time series by product or category for strategic review.
- **Ready-to-Use Dashboards:** Interactive dashboards compatible with PDF/CSV and Looker Studio.

---

## Technology Stack

- **Python 3.x** (Jupyter Notebook, pandas, matplotlib)
- **MySQL** (database schema, analytics)
- **Google Looker Studio** (dashboarding)
- **CSV/PDF** (export formats)

---

## Project Tasks

1. **Top 5 Products by Sales (2022, Mobiles & Tablets):**
   - Horizontal bar chart for top-selling products (valid orders only).
2. **Sales Decrease in 'Others' Category (2021-2022):**
   - Highlight products with biggest year-on-year decline.
   - Visual ranking for clear insight.
3. **Customer Checkout Drop-off (2022):**
   - List customer IDs and session dates for marketing follow-up.
4. **Weekend vs Weekday Sales Analysis (Q4-2022):**
   - Grouped bar charts for comparing campaign effectiveness.
5. **Products with Largest Decrease (Year Comparison):**
   - Deep-dive analysis of sales drop across products.
6. **Sales Trend by Category (2022):**
   - Monthly/weekly sales time series for main categories.

---

## Getting Started

### 1. Clone the Repository

git clone https://github.com/D4C-WOU/Real-Time-Sales-Analytics.git
cd Real-Time-Sales-Analytics


### 2. Prepare the Database

- Import the provided `finaldb.sql` file into MySQL to create schema and load sales data.


### 3. Run Data Analysis Notebook

- Open `Sales Analytics.ipynb` in [Jupyter Notebook](https://jupyter.org/) or compatible IDE.
- Update data source paths if necessary.
- Execute notebook cells to perform the full analysis workflow.

### 4. Explore Dashboards and Exports

- Review **business insights** in `Final_Dashboard.pdf`.
- Use **CSV exports** for further analytics or to integrate with Google Looker Studio.

---

## File Structure
Real-Time-Sales-Analytics/
├── internship csv files/         # Directory containing internship CSV datasets for analysis
├── training/                    # Directory for training-related CSV files (recently updated/deleted files)
├── Final_Dashboard.pdf          # PDF dashboard summarizing main project insights and visualizations
├── Internship Report.pdf        # Documentation/report about the internship project and analytics workflow
├── README.md                    # Documentation file for the repository (project overview, setup, usage)
├── Sales Analytics .ipynb       # Jupyter Notebook containing Python analysis and visualizations
├── finaldb.sql                  # MySQL database schema and dataset import for analysis
├── tasks.sql                    # SQL file containing specific task-related queries for the project



---

## Usage & Customization

- **Extend SQL Queries:** Modify queries in the notebook to target specific business questions or product subcategories.
- **Visualizations:** Adjust matplotlib code blocks for custom chart aesthetics.
- **Dashboard Customization:** Use exported CSV data with Google Looker Studio for creating custom charts and dashboards.
- **Data Updates:** Replace `finaldb.sql` and update paths for your own datasets.

---

## License

This project is provided for **educational and demonstration purposes only**.

---




