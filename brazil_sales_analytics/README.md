# Brazilian Sales Analytics Project

## Overview

This project delivers a robust analytics pipeline for Brazilian e-commerce sales data using **dbt** and **Google BigQuery**. The pipeline transforms raw transactional data into clean, reliable, and analysis-ready data marts to support business intelligence, reporting, and data-driven decision-making.

---

## Objectives

- Clean and standardize raw sales, product, and category data.
- Handle missing values and ensure data quality through dbt transformations and tests.
- Build modular staging models and final data marts for analytics.
- Enable scalable, cloud-based analytics using BigQuery.

---

## Project Structure

- **Staging Layer:** Cleans and standardizes raw data, handles nulls, and prepares data for further modeling.
- **Marts Layer:** Joins and aggregates staging models to create final, business-ready datasets.
- **Tests:** dbt tests for nulls, uniqueness, and referential integrity.

---

## Key Features

- **Null Handling:** All key fields are cleaned or replaced with `'Unknown'` or `0` where appropriate using `COALESCE()`.
- **Modular SQL Models:** Each transformation step is separated for clarity and maintainability.
- **Data Quality:** Includes dbt tests to ensure data integrity.
- **Cloud-Native:** Built for Google BigQuery, enabling fast and scalable analytics.

---

## How to Run

1. **Clone the Repository**
    ```
    git clone https://github.com/seifhossam22/brazil-sales-dbt-BigQuery.git
    cd brazil-sales-dbt-BigQuery/dbt_bigquery
    ```

2. **Set Up dbt and BigQuery Profile**
    - Install dbt for BigQuery:  
      `pip install dbt-bigquery`
    - Configure your `profiles.yml` for BigQuery authentication.

3. **Run dbt Models**
    ```
    dbt run
    dbt test
    ```

4. **Explore Data Marts**
    - The final analytics tables are available in your BigQuery project.

---

## Author

**Seif Hossam**  
[GitHub](https://github.com/seifhossam22) | [LinkedIn](https://www.linkedin.com/in/seifhossam22/)

---

## License

For educational and portfolio purposes only.

---
