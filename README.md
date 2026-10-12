Markdown
# 🛒 E-Commerce Sales, Profitability & Returns Analysis

## 📌 Project Overview
This end-to-end data analytics project evaluates E-Commerce business performance across sales channels, product profitability, and order returns. The project transitions from raw database queries to interactive, multi-page executive dashboards designed to deliver clear visual analytics and actionable insights.

* **Data Source:** E-Commerce dataset sourced from [SQLShed](https://sqlshed.com/).
* **SQL Execution Environment:** Queries executed & benchmarked using [DuckUI](https://duckui.com/) (powered by **DuckDB**).
* **BI Platform:** Interactive 2-Page Executive Dashboard developed in **Power BI Desktop**.

---

## 🛠️ Tech Stack & Workflow

```text
[ SQLShed Dataset ] ➔ [ DuckUI / DuckDB (SQL Queries) ] ➔ [ Power Query & DAX ] ➔ [ Power BI 2-Page Dashboard ]
SQL & DuckDB: Exploratory data analysis, data aggregation, window functions, and KPI calculation (delivered orders, net revenue, return counts, and profit margins).

Power Query & Data Modeling: Data cleansing, table transformations, and establishing a robust Star Schema with dedicated Date & Measures tables.

DAX (Data Analysis Expressions): Custom measures for dynamic time-intelligence calculations, refund totals, return rates, and KPI metrics.

Power BI UX/UI Design: Designed a two-page executive presentation using custom KPI cards, Top-N visual filtering, custom visual scale/axis formatting, and seamless Page Navigation controls.

📊 Interactive Dashboard Structure
📄 Page 1: Executive Overview
High-Level KPIs: Total Sales, Total Profit, Net Revenue, Delivered Orders, and Average Order Value (AOV).

Time Trend Analysis: Sales trend across years with custom axis scale adjustments (Millions formatting).

Channel Performance: Breakdown of delivered orders and net revenue by acquisition channel.

📄 Page 2: Product Profitability & Returns Analysis
Top 10 Products by Profit: Filtered horizontal bar chart highlighting high-performing SKUs.

Returns Breakdown by Reason: Donut chart evaluating refunds and return counts by reason code (e.g., Changed Mind, Damaged, Not as Described, Wrong Item).

Profitability by Category: Profit contribution breakdown across product categories.

💡 Key Insights & Business Recommendations
Return Reason Optimization:

A significant portion of returns is attributed to Changed Mind and Not as Described, indicating potential opportunities to improve product descriptions, sizing guides, and customer expectations on the storefront.

Product Margin Concentration:

The top 10 products account for a disproportionate share of overall profitability. Maintaining high stock availability (ROP optimization) for these core SKUs is vital for margin protection.

Channel Performance:

Channel comparison reveals variations in AOV, highlighting opportunities to reallocate marketing spend toward higher-converting channels.

📂 Project Structure
Plaintext
E-Commerce-Analytics-Portfolio/
│
├── 📄 README.md                        # Project documentation and case study
├── 📊 Ecommerce_Dashboard.pbix          # Interactive 2-Page Power BI Report
│
├── 📁 sql/
│   ├── all_learning_queries.sql       # Comprehensive SQL script (Exploratory & Practice queries)
│   ├── 01_sales_orders.sql            # Sales and delivered orders overview
│   ├── 02_channel_performance.sql     # Channel performance & AOV breakdown
│   ├── 03_product_profitability.sql   # Product-level profit & margins
│   └── 04_returns_analysis.sql        # Return reasons, refunds, and restocking
│
└── 📁 assets/
    ├── executive_overview.png          # Page 1 Screenshot
    └── products_returns.png           # Page 2 Screenshot
📐 Metric Definitions
Net Revenue: Quantity * Unit Price - Discount Amount

Product Profit: Net Revenue - (Quantity * Unit Cost) (Excludes non-product operating expenses)

Scope Filter: Sales and order KPIs strictly evaluate orders with an 'Order Status = Delivered' status to ensure revenue accuracy.
