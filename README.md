# Divvy Bikes: A Data-Driven Analysis of Rider Behavior

**Live Interactive Dashboard: [Link to your Tableau Public Dashboard]** 
*(Сюда вставь свою ссылку из Tableau Public)*

---

### Project Overview

This project is a case study from the Google Data Analytics Professional Certificate. The goal is to analyze the Divvy bike-share dataset from Chicago to understand the key differences in usage patterns between annual members and casual riders. 

The primary business objective is to provide data-driven recommendations for a marketing strategy aimed at **converting casual riders into annual members.**

---

### Key Findings & Recommendations

#### Finding 1: Distinct Usage Patterns
- **Members** use the service for short, frequent, utilitarian trips, suggesting daily commutes.
- **Casual Riders** opt for significantly longer, less frequent trips, indicating leisure and tourism purposes.

> **Recommendation:** Design separate marketing campaigns. For casual riders, focus on "experience-based" offerings like a "Weekend Pass" or a "Summer Tourist Pass" as a stepping stone to full membership.

#### Finding 2: Clear Temporal Differences
- **Members** show high activity during weekday commute hours (Monday-Friday).
- **Casual Riders** dominate the weekends and show a dramatic spike in activity during the summer months (June-August).

> **Recommendation:** Launch targeted digital marketing campaigns on weekends and during summer. Offer promotions for group rides or family packages to attract more casual users.

#### Finding 3: Significant Geographic Separation
- **Members'** top stations are concentrated in residential and business districts like The Loop and River North.
- **Casual Riders'** top stations are almost exclusively located along the Lake Michigan shoreline and near major tourist attractions like Millennium Park, Navy Pier, and Shedd Aquarium.

> **Recommendation:** Implement a dynamic bike rebalancing strategy. Increase bike availability at tourist hotspots on weekends and in business districts on weekday mornings to improve customer experience for both segments.

---<img width="1003" height="802" alt="Divvy Bikes  Converting Casual Riders into Members" src="https://github.com/user-attachments/assets/dbe4c691-f070-4b24-b60e-a12c973a2d4f" />


### The Dashboard

*(Сделай хороший, чистый скриншот своего дашборда и вставь его сюда. Это очень важно!)*

![Divvy Dashboard Screenshot](link_to_your_screenshot.png) 
![Uploading Divvy Bikes. Converting Casual Riders into Members.png…]()

---

### Technical Stack

*   **Database:** MySQL (for data cleaning, transformation, and aggregation)
*   **Visualization:** Tableau Public (for creating the interactive dashboard)
*   **Data Source:** [Divvy Tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) (data from the last 12 months was used)

---

### The Process

1.  **Data Preparation:** Downloaded 12 months of trip data. Loaded it into a MySQL database.
2.  **Data Cleaning & Transformation (SQL):** Combined all 12 tables into one master table. Cleaned the data by removing duplicates, handling nulls, and filtering out trips with erroneous durations. Created new columns for analysis (`ride_length_minutes`, `day_of_week`, `month`).
3.  **Analysis (SQL):** Wrote 13 analytical queries to aggregate the data and calculate key metrics (total rides, average duration, usage by day/month, top stations, etc.) for both user segments.
4.  **Visualization (Tableau):** Connected Tableau to the aggregated datasets. Created four key visualizations and assembled them into a single, interactive dashboard designed to tell a clear story.

---

### Repository Structure

-   `/sql_scripts`: Contains all SQL queries used for data cleaning, transformation, and analysis.
-   `/csv_data_aggregated`: Contains the final, aggregated CSV files exported from MySQL that were used as the data source for Tableau.
-   `/tableau_workbook`: Contains the final Tableau workbook file (`.twbx`).
-   `README.md`: This file.

---

### Contact

*   **Author:** [Valentyn Malyuk]
*   **LinkedIn:** [https://www.linkedin.com/in/valentyn-malyuk-003564120/]
