# Divvy Bikes: A Data-Driven Strategy for Customer Conversion

**[View the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/valeryn.malyuk/viz/divvy-bikeshare-analysis/DivyBikes#1)**

---

### 1. Project Objective

To analyze Divvy bike-share data to identify the core differences between casual riders and annual members, and to translate these insights into a **data-driven strategy for converting casual riders into paying members.**

---

### 2. Strategic Recommendations

The analysis resulted in three actionable business recommendations, each supported by clear data evidence.

#### Recommendation 1: Introduce a "Feeder" Membership Tier
- **The Insight:** Casual riders use the service for long, recreational trips, while members use it for short, frequent commutes. They are two distinct personas.
- **The Evidence:**
  | Rider Type | Total Rides | Avg. Duration (mins) |
  | :--------- | :---------- | :------------------- |
  | Casual     | 1,603,523   | 23.03                |
  | Member     | 2,692,153   | 12.05                |
- **The Strategy:** Launch a "Weekend Pass" or "Summer Explorer" membership. This lower-commitment option serves as a "feeder" product, creating a natural pathway to a full annual subscription.

---

#### Recommendation 2: Implement Targeted, Time-Based Marketing
- **The Insight:** The two user groups ride at completely different times. Members dominate weekdays, while casual riders surge on weekends.
- **The Evidence:**
  | Day       | Casual Rides | Member Rides |
  | :-------- | :----------- | :----------- |
  | Monday    | 192,846      | 406,010      |
  | Tuesday   | 180,365      | 435,129      |
  | Wednesday | 186,281      | 429,660      |
  | Thursday  | 203,493      | 424,470      |
  | Friday    | 247,343      | 383,351      |
  | **Saturday**  | **330,411**      | **329,035**      |
  | **Sunday**    | **262,784**      | **284,498**      |
- **The Strategy:** Concentrate the marketing budget for the new membership tiers on digital campaigns that run from Friday to Sunday. This maximizes ROI by reaching the target audience when they are most active.

---

#### Recommendation 3: Optimize Bike Availability with a Dual-Zone Strategy
- **The Insight:** The groups operate in different parts of the city. Casual riders stick to tourist hotspots on the lakefront, while members are in business and residential hubs further inland.
- **The Strategy:** Implement a dynamic bike rebalancing plan. On weekday mornings, prioritize bike availability in member-heavy zones. On weekends, shift the focus to ensuring a high supply of bikes at tourist-heavy stations to improve customer experience and prevent lost sales.

---

### 3. The Dashboard

This narrative is summarized in a four-panel interactive dashboard designed for stakeholders.

![divy-bikes-screenshot](https://github.com/user-attachments/assets/ed93b934-73b9-48ac-a3f6-2cee6d5be34c)


---

### 4. Future Work & Next Steps

This analysis provides a strong foundation. Further investigation could yield even more targeted strategies:

-   **Route Analysis:** Identify the most popular `start-to-end` station flows for casual riders to pinpoint "tourist corridors" for partnerships or promotions.
-   **Pricing Experiments:** A/B test different price points for the new "feeder" memberships to find the optimal balance between conversion and revenue.
-   **External Data Integration:** Correlate ridership data with weather patterns and city event schedules to build a predictive model for demand.

---

### 5. Technical Details

-   **Tools:** SQL (MySQL) for data cleaning, transformation, and aggregation; Tableau Public for visualization.
-   **Source Files:**
    -   `/sql_scripts`: Contains all SQL queries for processing and analysis.
    -   `/aggregated_data`: Contains the final CSV files used in Tableau.
    -   `/tableau_workbook`: Contains the final Tableau workbook file (`.twbx`).

---

### 6. Author

**Valentyn Malyuk**  
[LinkedIn](https://www.linkedin.com/in/valentyn-malyuk-003564120/)
