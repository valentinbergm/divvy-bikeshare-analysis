# Divvy Bikes: A Data-Driven Strategy for Customer Conversion

**[View the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/valeryn.malyuk/viz/divvy-bikeshare-analysis/DivyBikes#1)**

---

### 1. Business Objective

To analyze the Divvy bike-share dataset to understand the fundamental differences between annual members and casual riders, with the primary goal of developing a **data-driven marketing strategy to convert casual riders into members.**

---

### 2. Strategic Recommendations for Business Growth

Based on the analysis, three core strategic recommendations were developed to drive the conversion of casual riders to annual members:

**1. Introduce a "Feeder" Membership Tier:**
   - **The Insight:** Casual riders enjoy long, recreational rides but are not ready for a full annual commitment.
   - **The Recommendation:** Launch a "Weekend Pass" or "Summer Explorer" membership. This lower-commitment option serves as a "feeder" product, creating a natural pathway to a full annual subscription by allowing users to experience membership benefits on their own terms.

**2. Implement Targeted, Time-Based Marketing:**
   - **The Insight:** Casual riders are most active during specific, predictable times (weekends and summer months).
   - **The Recommendation:** Concentrate the marketing budget for the new membership tiers on digital campaigns that run from Friday to Sunday and intensify during June-August. This maximizes ROI by reaching the target audience when they are most likely to use the service.

**3. Optimize Bike Availability with a Dual-Zone Strategy:**
   - **The Insight:** The two user groups operate in almost entirely different geographical areas (tourist hotspots vs. business/residential districts).
   - **The Recommendation:** Implement a dynamic bike rebalancing strategy. On weekday mornings, prioritize bike availability in member-heavy zones. On weekends, shift the focus to ensuring a high supply of bikes at tourist-heavy stations to improve customer experience and prevent lost sales.

---

### 3. The Final Dashboard

The final dashboard is designed to tell a clear, concise story to a business stakeholder in under 60 seconds. It answers the key questions: **WHO** are the users, **HOW** do they behave differently, and **WHY** does their location matter?

![Divvy Dashboard Screenshot](https://github.com/valentinbergm/divvy-bikeshare-analysis/assets/99516887/e4195a01-d6d0-49bd-84b9-db1cf81638b8)

---

### 4. Analytical Evidence & Dashboard Rationale

To arrive at these recommendations, a thorough analysis was conducted. The final dashboard intentionally features only the most impactful visualizations. Below is the evidence from the key analyses and the strategic reasoning for their inclusion or exclusion.

#### **Analysis 1: High-Level Usage Patterns**
**Insight:** The core difference between the groups is immediately apparent. Members are high-frequency, short-duration riders, while casual users are low-frequency, long-duration riders.

| member_casual | total_rides | avg_ride_duration_mins |
| :------------ | :---------- | :--------------------- |
| casual        | 1,603,523   | 23.03                  |
| member        | 2,692,153   | 12.05                  |

**Dashboard Rationale:** **INCLUDED.** These KPIs are the cornerstone of the entire story and form the main summary charts. They immediately establish the two distinct user personas.

---

#### **Analysis 2: Weekly Usage Patterns**
**Insight:** A clear behavioral pattern emerges across the week. Members dominate the weekdays (Mon-Fri), reinforcing the "commuter" persona. Casual riders show a massive spike on weekends, proving the "leisure/tourist" persona.

| day_of_week | member_casual | total_rides |
| :---------- | :------------ | :---------- |
| Sunday      | casual        | 262,784     |
| Sunday      | member        | 284,498     |
| Monday      | casual        | 192,846     |
| Monday      | member        | 406,010     |
| Tuesday     | casual        | 180,365     |
| Tuesday     | member        | 435,129     |
| Wednesday   | casual        | 186,281     |
| Wednesday   | member        | 429,660     |
| Thursday    | casual        | 203,493     |
| Thursday    | member        | 424,470     |
| Friday      | casual        | 247,343     |
| Friday      | member        | 383,351     |
| Saturday    | casual        | 330,411     |
| Saturday    | member        | 329,035     |

**Dashboard Rationale:** **INCLUDED.** This is the key piece of evidence that provides an actionable timeframe for targeted marketing.

---

#### **Analysis 3: Geographic Patterns**
**Insight:** The geographic data provided the most compelling evidence, showing a clear physical separation between the two groups' preferred locations.
-   **Casual riders** cluster around tourist attractions on the lakefront (Streeter Dr, Millennium Park, Shedd Aquarium).
-   **Member riders** cluster in residential and business hubs further inland (Kingsbury St, Clinton St).

**Dashboard Rationale:** **INCLUDED.** The map is the most powerful visualization, as it answers the "why" behind the different behaviors and defines the physical locations for marketing and operations.

---

#### **Analysis 4: Bike Type Preference**
**Insight:** The analysis revealed that there is **no significant difference** in bike preference. Both groups use classic and electric bikes in very similar proportions.

| member_casual | rideable_type | percentage_of_total |
| :------------ | :------------ | :------------------ |
| casual        | classic_bike  | 58.36%              |
| casual        | electric_bike | 40.09%              |
| member        | classic_bike  | 59.52%              |
| member        | electric_bike | 39.70%              |

**Dashboard Rationale:** **EXCLUDED.** This is a crucial finding, but it's a "non-actionable" one for our specific business goal. Since bike type is not a key differentiator for converting users, including this chart would add noise without contributing to the main story. This demonstrates a commitment to focusing on impactful, decision-driving insights.

---

### 5. Future Work & Next Steps

This analysis provides a strong foundation, but further investigation could yield even more targeted strategies:

*   **Route Analysis:** Analyze the most popular trip routes (`start_station` to `end_station`) for casual riders to identify "tourist corridors" for partnerships or targeted advertising.
*   **Pricing Analysis (A/B Testing):** If a "Weekend Pass" is implemented, conduct A/B tests with different price points to find the optimal balance between conversion rate and revenue.
*   **External Data Integration:** Correlate ridership data with weather patterns and city event schedules to build a predictive model for demand, further optimizing bike availability.

---

### 6. Technical Details

*   **Tools:** MySQL (Data Cleaning, Transformation, Analysis), Tableau Public (Visualization)
*   **Repository Structure:**
    -   `/sql_scripts`: Contains all SQL queries.
    -   `/aggregated_data`: Contains the final CSV files used in Tableau.
    -   `/images`: Contains the dashboard screenshot.
    -   `/tableau_workbook`: Contains the final Tableau workbook file (`.twbx`).

---

### 7. Contact

*   **Author:** Valentyn Malyuk
*   **LinkedIn:** [https://www.linkedin.com/in/valentyn-malyuk-003564120/](https://www.linkedin.com/in/valentyn-malyuk-003564120/)
