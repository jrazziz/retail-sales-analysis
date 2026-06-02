# Retail Sales Analysis

A comprehensive analysis of retail sales data using **SQL**, **Python**, and **Power BI** to uncover profitability drivers and business recommendations.

---

## Business Questions

1. Which products and categories drive profit vs. loss?
2. How does discounting impact profitability?
3. What are the sales trends and seasonal patterns?
4. Which customers and regions are most valuable?

---

## Tools & Skills

| Tool | Usage |
|------|-------|
| SQL (SSMS) | Data extraction, aggregation, complex queries |
| Python (Pandas, Matplotlib, Seaborn) | Data cleaning, EDA, statistical analysis |
| Power BI | Interactive dashboard, DAX measures, business reporting |

---

## Repository Structure
retail-sales-analysis/
├── data/
│   ├── raw/                    # Original dataset
│   └── processed/              # Cleaned dataset
├── sql/
│   ├── 01_exploration.sql
│   ├── 02_profitability.sql
│   ├── 03_discount_impact.sql
│   ├── 04_customer_analysis.sql
│   └── 05_time_trends.sql
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda.ipynb            # 5 charts with analysis
│   └── 03_insights.ipynb       # Key findings & recommendations
├── powerbi/
│   ├── Superstore Analysis.pbix
│   └── dashboard_screenshots/
│       ├── page1_executive_summary.png
│       ├── page2_product_analysis.png
│       └── page3_customer_geography.png
├── src/
│   └── utils.py                # Helper functions
├── outputs/
│   └── figures/                # Saved visualizations
├── README.md
└── requirements.txt
plain

---

## Key Insights

### 1. Heavy Discounts Destroy Profitability

| Discount Tier | Margin | Status |
|-------------|--------|--------|
| No Discount | 29.6% | ✅ Excellent |
| Low (1-20%) | 12.7% | ⚠️ Acceptable |
| Medium (21-50%) | 3.0% | ❌ Dangerous |
| High (>50%) | -118.7% | 🚨 Catastrophic |

**42% of orders use medium-to-high discounts and barely break even or lose money.**

### 2. Q4 Drives Revenue, Q1 Struggles

- **Peak:** November ($79K-$118K), December ($72K-$97K)
- **Trough:** February ($4K-$22K), January sometimes unprofitable
- **Growth:** 2026 outperformed all previous years

### 3. Corporate Customers Are the Profit Engine

- **Top 10 customers:** Mostly Corporate segment
- **Best customer:** Tamara Chand — $8,981 profit at 47% margin
- **Corporate segment:** Generates highest profit per customer

---

## Recommendations

| Priority | Action |
|----------|--------|
| 🔴 Immediate | Cap discounts at 20%, eliminate >50% discounts |
| 🟡 Short-term | Reduce furniture inventory, focus on Office Supplies + Technology |
| 🟢 Long-term | Build Q1 revenue streams, expand Corporate sales team |

---

## Dashboard Preview

### Executive Summary
![Executive Summary](powerbi/dashboard_screenshots/page1_executive_summary.png)

### Product Analysis
![Product Analysis](powerbi/dashboard_screenshots/page2_product_analysis.png)

### Customer & Geography
![Customer & Geography](powerbi/dashboard_screenshots/page3_customer_geography.png)

---

## How to Run

1. Clone the repository
2. Install dependencies: `pip install -r requirements.txt`
3. Run SQL scripts in SSMS or any SQL Server client
4. Open and run Jupyter notebooks in order
5. Open `Superstore Analysis.pbix` in Power BI Desktop

---

## Contact

**Mohamed Abdelaziz**

- 📧 Email: [Azizahmed1357@gmail.com](mailto:Azizahmed1357@gmail.com)
- 💼 LinkedIn: [linkedin.com/in/jrazziz](https://linkedin.com/in/jrazziz)
- 🐙 GitHub: [github.com/jrazziz](https://github.com/jrazziz)
- 📊 **Kaggle Notebook:** [kaggle.com/jrazziz/retail-sales-analysis](https://www.kaggle.com/jrazziz/retail-sales-analysis)

---

## License

This project is for educational and portfolio purposes.
