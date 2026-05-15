# 📊 UPI Trends India (2017–2025)
### End-to-End Data Analytics Project

![Python](https://img.shields.io/badge/Python-3.10-blue)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![SQL](https://img.shields.io/badge/SQL-SQLite-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 🔍 Overview

An end-to-end data analytics project analyzing **102 months of UPI transaction data** from **August 2017 to June 2025**.

This project simulates a real-world analytics workflow:
- Raw dirty dataset creation
- Data cleaning & preprocessing
- Exploratory Data Analysis (EDA)
- SQL business analysis
- Interactive Power BI dashboarding

UPI is one of the world’s fastest-growing digital payment systems, and this project explores its massive growth journey through data.

---

## 🛠️ Tech Stack

| Tool | Usage |
|------|------|
| Python (Pandas, NumPy) | Data cleaning & transformation |
| Matplotlib & Seaborn | Data visualization |
| SQLite | Business SQL analysis |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Analysis environment |

---

## 📁 Project Structure

```bash
upi-trends-india-2017-2025/
│
├── data/
│   ├── upi_data_raw.csv
│   └── upi_data_clean.csv
│
├── notebook/
│   └── upi.ipynb
│
├── dashboard/
│   └── UPI_Dashboard.pbix
│
├── sql/
│   └── upi_queries.sql
│
└── README.md
```

---

## 🧹 Data Cleaning Process

The raw dataset was intentionally made messy to replicate real-world data issues.

### Issues Handled
- Repeated header rows inside dataset
- Incorrect data types
- Lowercase month names
- Duplicate rows
- Missing values
- Extreme outlier values

### Cleaning Techniques Used
- `drop_duplicates()`
- `astype()`
- `str.capitalize()`
- `interpolate()`
- Conditional filtering with `loc[]`

---

## ⚙️ Feature Engineering

Additional analytical columns were created:

| Feature | Description |
|------|------|
| Avg_Ticket_Size_Rs | Average value per transaction |
| YoY_Growth | Year-over-Year growth percentage |
| Date | Combined Month + Year datetime column |

---

## 📊 Exploratory Data Analysis

Visualizations created during analysis:

- UPI transaction growth over time
- Total transaction value trend
- Volume vs Value comparison
- Yearly transaction totals
- Average ticket size trend
- Monthly seasonality analysis
- YoY growth analysis
- Correlation heatmap
- Month × Year activity heatmap

---

## 🗄️ SQL Business Analysis

Business-focused SQL queries written using SQLite:

1. Total yearly transaction volume & value
2. Peak transaction month per year
3. YoY growth using window functions
4. Months above average transaction volume
5. Monthly seasonality analysis
6. Rolling 3-month moving average

---

## 📈 Key Insights

- 📊 UPI transactions grew from **74 crore to 17,047 crore**
- 🚀 Overall growth exceeded **229×** between 2017 and 2024
- 💳 Average ticket size steadily declined, indicating mass adoption
- 📅 May and June consistently showed peak activity
- 📈 Every year demonstrated strong positive growth
- 🔗 Transaction Volume and Value showed **0.99 correlation**
- 🏆 May 2025 recorded the highest ever monthly volume:
  **2,001 crore transactions**

---

## 📊 Power BI Dashboard

Interactive dashboard built using a professional dark theme.

### Dashboard Features
- KPI Cards
- Time-series trend analysis
- Year-wise comparison charts
- Monthly distribution analysis
- Interactive filters
- Heatmap visualization

---

## 🖼️ Dashboard Preview

> Add your dashboard screenshots here

### Main Dashboard
![Dashboard Preview](images/dashboard.png)

---

## 🎯 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL Analytics
- Data Visualization
- Dashboard Design
- Business Insight Generation
- Time Series Analysis
- Feature Engineering

---

## 🚀 How to Run

### 1️⃣ Clone Repository
```bash
git clone https://github.com/yourusername/upi-trends-india-2017-2025.git
```

### 2️⃣ Open Jupyter Notebook
Run:
```bash
notebook/upi.ipynb
```

### 3️⃣ Open Power BI Dashboard
Open:
```bash
dashboard/UPI_Dashboard.pbix
```

### 4️⃣ Run SQL Queries
Execute:
```bash
sql/upi_queries.sql
```

---

## 👤 Author

Built with 💙 as a portfolio project to demonstrate end-to-end data analytics skills using Python, SQL, and Power BI.
