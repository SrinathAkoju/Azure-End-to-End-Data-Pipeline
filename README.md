# Azure End-to-End-Data Pipeline Project
 A cloud-based data engineering + analytics workflow using ADLS Gen2, ADF, Databricks, Azure SQL, and Power BI.

## Project Summary

This project showcases an end-to-end cloud data pipeline on Microsoft Azure, built from a data analyst’s perspective with strong engineering fundamentals.

The pipeline ingests raw data, transforms it into analytics-ready datasets using Azure Databricks, and exposes curated Gold-layer views through Azure Synapse Serverless SQL for downstream analysis and reporting.

## Why This Project

As a Data Analyst transitioning into a broader Data Professional role, this project demonstrates:

Ownership of the entire data lifecycle
Strong understanding of cloud analytics architecture
Ability to bridge business analytics and data engineering

This project was created as part of my Azure learning journey while preparing for **DP-900 (Azure Data Fundamentals)**.

---

## 🏗 Architecture

[![Azure-End-to-End-Pipeline](architecture.jpeg)](architecture.jpeg)

**This architecture follows the Azure Medallion pattern (Bronze → Silver → Gold) using ADF for ingestion, Databricks for transformation, and Power BI for reporting.**
---

## End-to-End Data Flow
1️⃣ Data Ingestion — Bronze Layer

Source data (AdventureWorks datasets) is ingested using Azure Data Factory

Pipelines are parameterized to handle multiple datasets

Raw data is stored in Azure Data Lake Storage Gen2 (Bronze layer) without modification

![Azure-End-to-End-Pipeline](adf-pipeline-config.json)

2️⃣ Data Transformation — Silver Layer

Azure Databricks (PySpark) is used to clean and transform raw data
Schema standardization, data type normalization, and basic cleansing applied
Transformed data is stored in ADLS Gen2 (Silver layer) in Parquet format

![Azure-End-to-End-Pipeline](Silver__Layer.ipynb)

3️⃣ Analytics & Serving — Gold Layer

Azure Synapse Serverless SQL is used to create curated analytical views
Views are built using OPENROWSET over Parquet files
No dedicated SQL infrastructure required
Gold views are optimized for BI tools and ad-hoc analysis

![Azure-End-to-End-Pipeline](Create_Views_gold.sql)

4️⃣ Curated Storage (Optional Materialization)

Gold views are also materialized as external tables in ADLS Gen2

Enables reuse and structured access for downstream consumers

![Azure-End-to-End-Pipeline](Creating_Ext_tables.sql)

5️⃣ Security & Access

Data access between Azure Databricks, Synapse, and ADLS Gen2 is secured using Azure Managed Identity and RBAC.
Authentication details are intentionally omitted from code to follow security best practices.

⚙️ Technologies Used

Azure Data Factory

Azure Data Lake Storage Gen2

Azure Databricks (PySpark)

Azure Synapse Analytics (Serverless SQL)

Parquet

Azure Managed Identity

GitHub

🧠 Key Learnings

Implemented Medallion Architecture in Azure

Built analytics pipelines using serverless compute

Understood IAM vs SQL permissions in Synapse

Designed data models with analytics consumption in mind

🚀 Future Enhancements

Power BI dashboards on Gold views

Incremental ingestion and processing

Data quality validations

CI/CD for pipelines and notebooks


---

## 📁 Dataset Source

Dataset provided by **Ansh Lamba** as part of his Azure tutorial.  
Link: https://github.com//anshlambaoldgit/Adventure-Works-Data-Engineering-Project/tree/main/Data 

Dataset is **not re-uploaded** in this repository to respect ownership.

---

## 🎯 Key Learnings

- Working with ADLS Gen2  
- Bronze → Silver → Gold pipeline design  
- ADF orchestration  
- Databricks transformations  
- Azure SQL integration  
- Power BI connectivity  
- Cloud analytics workflow fundamentals  

---

## 🙌 Acknowledgment

Special thanks to **Ansh Lamba** for the tutorial guidance.

---

## This project reflects my journey as a Data Analyst expanding into a Data Professional role, focusing on both analytical outcomes and scalable cloud data engineering practices.

## 🤝 Connect With Me

LinkedIn: https://linkedin.com/in/srinathakoju 

