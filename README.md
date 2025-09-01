# Divvy Bikes: A Data-Driven Analysis of Rider Behavior

**[View the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/valeryn.malyuk/viz/divvy-bikeshare-analysis/DivyBikes#1)**

---

### 1. Project Objective

This project is a case study from the Google Data Analytics Professional Certificate. The goal is to analyze the Divvy bike-share dataset from Chicago to understand the key differences in usage patterns between annual members and casual riders. 

The primary business objective is to provide data-driven recommendations for a marketing strategy aimed at **converting casual riders into annual members.**

---

### 2. Key Findings & Recommendations

*   **Distinct Usage Patterns:** Members use the service for short, frequent commutes (avg. 12 min), while casual riders opt for significantly longer, recreational trips (avg. 23 min).
*   **Clear Temporal Differences:** Members show high activity during weekday commute hours, while casual riders dominate the weekends and show a dramatic spike in activity during the summer months.
*   **Significant Geographic Separation:** Members' top stations are concentrated in residential and business districts, while casual riders' top stations are almost exclusively located along the Lake Michigan shoreline and near major tourist attractions.

**Top Recommendation:** Design and launch a targeted "Weekend/Summer Pass" campaign aimed at casual riders to bridge the gap to a full annual membership, focusing marketing efforts near tourist-heavy locations.

---

### 3. The Final Dashboard

![Divvy Dashboard Screenshot](https://github.com/valentinbergm/divvy-bikeshare-analysis/assets/99516887/e4195a01-d6d0-49bd-84b9-db1cf81638b8)

---

### 4. The Analysis: From Questions to Insights

A total of 11 analytical queries were run to explore the dataset from various angles. Each query aimed to answer a specific business question. Below is a summary of the most critical findings and the rationale for including or excluding them from the final dashboard to maintain a clear and focused narrative.

#### Q1: How do high-level usage patterns differ?
*(Query 1 in `analytical_queries.sql`)*

**Insight:** This initial query immediately revealed the core difference between the two groups. Members use the service for short, frequent trips, while casual riders take much longer, recreational rides.

| member_casual | total_rides | avg_ride_duration_mins |
| :------------ | :---------- | :--------------------- |
| casual        | 1,603,523   | 23.03                  |
| member        | 2,692,153   | 12.05                  |

**Decision:** **INCLUDED.** These two KPIs are the cornerstone of the entire story and form the main summary charts on the dashboard.

---

#### Q2: Are there differences in usage across the week?
*(Query 2 in `analytical_queries.sql`)*

**Insight:** A clear pattern emerged. Members dominate the weekdays, suggesting commute-based usage. Casual riders show a massive spike on weekends, reinforcing the leisure/tourism hypothesis.

| day_of_week | member_casual | total_rides |
| :---------- | :------------ | :---------- |
| Sunday      | casual        | 262,784     |
| Sunday      | member        | 284,498     |
| Monday      | casual        | 192,846     |
| Monday      | member        | 406,010     |
| ...         | ...           | ...         |

**Decision:** **INCLUDED.** This is a key piece of evidence that directly supports the "commute vs. leisure" narrative and is a central visualization on the dashboard.

---

#### Q3: What is the geographic story?
*(Query 11 in `analytical_queries.sql`)*

**Insight:** The geographic data provided the most compelling evidence. The top 25 station/user combinations showed a clear physical separation between the two groups.
-   **Casual riders** cluster around tourist attractions on the lakefront (Streeter Dr, Millennium Park, Shedd Aquarium).
-   **Member riders** cluster in residential and business hubs further inland (Kingsbury St, Clinton St).

**Decision:** **INCLUDED.** The map is the most powerful visualization in the dashboard, as it answers the "why" behind the different user behaviors.

---

#### Q4: Is there a seasonal effect?
*(Query 3 in `analytical_queries.sql`)*

**Insight:** Yes, a strong seasonal pattern exists, particularly for casual riders. Their activity in peak summer (July: 431k rides) is vastly higher than in winter (January: 16k rides). Member activity is more stable year-round.

**Decision:** **EXCLUDED.** While a valid insight, the "Weekly Pattern" chart already tells a more actionable version of the same story. Including a monthly chart would be redundant and dilute the dashboard's core message. The key takeaway is the *type* of usage (leisure), which is better shown by the weekend spike.

---

#### Q5: Do the groups prefer different types of bikes?
*(Query 10 in `analytical_queries.sql`)*

**Insight:** No. The analysis revealed that there is **no significant difference** in bike preference. Both segments use classic bikes (~59%) and electric bikes (~40%) in almost identical proportions.

| member_casual | rideable_type | percentage_of_total |
| :------------ | :------------ | :------------------ |
| casual        | classic_bike  | 58.36%              |
| casual        | electric_bike | 40.09%              |
| member        | classic_bike  | 59.52%              |
| member        | electric_bike | 39.70%              |

**Decision:** **EXCLUDED.** This is a crucial finding, but it's a "non-actionable" one for our specific business goal. Since bike type is not a key differentiator for converting users, including this chart would add noise without contributing to the main story. This demonstrates a commitment to presenting only the most impactful, decision-driving insights.

---

### 5. Technical Stack & Process

*   **Tools:** MySQL, Tableau Public
*   **Process:**
    1.  **Data Cleaning & Preparation:** Raw data from 12 months was loaded into MySQL, combined, and cleaned to create a master table for analysis.
    2.  **Analysis:** 11 SQL queries were executed to aggregate data and extract key insights.
    3.  **Visualization:** The aggregated datasets were connected to Tableau to create a 4-panel narrative dashboard.

---

### 6. Repository Structure

-   `/sql_scripts`: Contains all SQL queries for data processing and analysis.
-   `/aggregated_data`: Contains the final CSV files used as the data source for Tableau.
-   `/images`: Contains the dashboard screenshot.
-   `/tableau_workbook`: Contains the final Tableau workbook file (`.twbx`).

---

### 7. Contact

*   **Author:** Valentyn Malyuk
*   **LinkedIn:** [https://www.linkedin.com/in/valentyn-malyuk-003564120/](https://www.linkedin.com/in/valentyn-malyuk-003564120/)
