# Divvy Bikes: A Data-Driven Strategy for Customer Conversion

**[View the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/valeryn.malyuk/viz/divvy-bikeshare-analysis/DivyBikes#1)**

---

### 1. Business Objective

To analyze Divvy bike-share data to identify the core differences between casual riders and annual members, and to translate these insights into a **data-driven strategy for converting casual riders into paying members.**

---

### 2. Strategic Recommendations

The analysis resulted in three actionable business recommendations, each supported by clear data evidence presented in the dashboard.

1.  **Introduce a "Feeder" Membership Tier:** Launch a "Weekend Pass" or "Summer Explorer" membership. This lower-commitment option serves as a "feeder" product, creating a natural pathway to a full annual subscription for leisure-focused riders.  
2.  **Implement Targeted, Time-Based Marketing:** Concentrate the marketing budget for the new membership tiers on digital campaigns that run from Friday to Sunday and intensify during the summer months to maximize ROI by reaching the target audience when they are most active.  
3.  **Optimize Bike Availability with a Dual-Zone Strategy:** On weekday mornings, prioritize bike availability in member-heavy business zones. On weekends, shift the focus to ensuring a high supply of bikes at tourist-heavy stations to improve customer experience.  

---

### 3. The Dashboard

<img width="1396" height="796" alt="Screenshot 2025-09-04 at 18 45 15" src="https://github.com/user-attachments/assets/02a91c80-b00e-4eec-a873-94abebe32511" />



---

### 4. Analysis Deep Dive

In addition to the main insights shown on the dashboard, several hypotheses were tested to validate differences between casual and member riders. Some patterns proved highly differentiating, while others showed little to no distinction.

#### Finding A: Strong Seasonal Pattern for Casual Riders
A clear seasonal trend was identified, with casual rider activity spiking during the summer months.

| Month     | Casual Rides | Member Rides |
| :-------- | :----------- | :----------- |
| January   | 16,678       | 81,132       |
| February  | 19,202       | 86,657       |
| ...       | ...          | ...          |
| **July**  | **431,672**  | **579,118**  |
| **August**| **224,377**  | **305,053**  |

---

#### Finding B: Bike Type Shows No Meaningful Difference
Both groups used classic and electric bikes in almost identical proportions.

| Rider Type | Rideable Type | Percentage of Total |
| :--------- | :------------ | :------------------ |
| Casual     | classic_bike  | 58.36%              |
| Casual     | electric_bike | 40.09%              |
| Member     | classic_bike  | 59.52%              |
| Member     | electric_bike | 39.70%              |

---

#### Finding C: Members Prefer Short Trips
When categorizing rides by duration, members clearly concentrate in the “quick trip” bucket.

| Trip Category      | Casual Rides | Member Rides |
| :----------------- | :----------- | :----------- |
| **Quick (0-10 min)** | **655,798**    | **1,630,301**  |
| Short (10-30 min)  | 644,159      | 909,622      |
| Mid (30-60 min)    | 198,182      | 136,543      |
| Long (>60 min)     | 105,384      | 15,687       |

---

### 5. Future Work & Next Steps

-   **Route Analysis:** Identify popular `start-to-end` station flows for casual riders to pinpoint "tourist corridors" for partnerships or promotions.  
-   **Pricing Experiments:** A/B test different price points for the new "feeder" memberships to find the optimal balance between conversion and revenue.  
-   **External Data Integration:** Correlate ridership data with weather patterns and city event schedules to build a predictive model for demand.  

---

### 6. Technical Details & Repository Structure

-   **Tools:** SQL (MySQL), Tableau Public  
-   **Files:**  
    -   `/sql_scripts`: Contains all SQL queries for data processing and analysis.  
    -   `/aggregated_data`: Contains the final CSV files used in Tableau.  
    -   `/tableau_workbook`: Contains the final Tableau workbook file (`.twbx`).  

---

### 7. Author

**Valentyn Malyuk**  
[LinkedIn](https://www.linkedin.com/in/valentyn-malyuk-003564120/)  
