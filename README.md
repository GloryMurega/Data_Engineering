# Data-Engineering
Creating Gans local and cloud data pipelines
---
## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Sources](#data-sources)
3. [Tools Used](#tools-used)
4. [ Data Exploration and Analysis (EDA)](#data-exploration-and-analysis-eda)
5. [Data Insights](#data-insights)
6. [Recommendations](#recommendations)
7. [References](#references)
   
## Project Overview
Gans is a theoretical startup revolutionizing e-scooter-sharing, aiming to streamline operations in vibrant cities across Europe and the UK. To remain competitive, their success hinges on ensuring scooters are parked conveniently for users, who are assumed to be young city tourists.
- **The Challenge** - Ideally, scooters should reposition themselves organically, but real-world scenarios like daily commutes and unexpected weather changes create imbalances. For example, scooters tend to move from residential neighborhoods to city centers in the morning, or their usage drops when it rains. To better predict customer behavior, Gans needs demographic, location, airport, flights, and weather data for Berlin and London. As a Junior Data Engineer at Gans, the task is to develop an automated data pipeline that gathers real-time data from various external sources and makes it accessible to everyone in the organization, thus informing business decisions like incentivizing certain park locations.

## Data Sources
The data for this project is collected from various sources harnessing ethical Web scrapping methods and API tools. Below is a brief description on each dataset:

- **city:** Contains unique data on London and Berlin such as population and geographical coordinates. This data was Web scrapped from Wikipedia. 
- **airport:** This data contains the International Civil Aviation Organization (ICAO) codes of specific airport in the particular city.
- **weather:** Contains daily weather forecasts for the cities with 3-hour intervals. It is collected using the '5 day weather forecast - OpenWeatherMap' API from OpenWeatherMap.Org.
- **flight:** Contains 'the next day' flight information expected to arrive at the specified airport. This data is collected from AeroDataBox on Rapid API, with 'GET FIDS/Schedules (airport 
 departures and arrivals) - by local time range' as the end point.

## Tools Used
- **JupyterLab:** For programming.
- **MySQL:** For data storage and database management.
- **Google Cloud Platform:** For creating the cloud pipeline, cloud function and scheduling.
- **Medium:** Blog to document journey into data engineering.
  
## Data Exploration and Analysis (EDA)
#### SQL
- **EDA Questions**
1. **Data base**: What time frame does the Magist sales database cover?
2. **Products**: What kind of tech products does Magist sell? What percentage of its portfolio is tech products? How do their sales perform?
3. **Sellers**: How many sellers does Magist have, and what percentage of them sell tech products?
4. **Prices**: What is the average price of tech products being sold? How do the high_end_products perform in terms of sales?
5. **Delivery timelines**: What’s the average time between the order being placed and the product being delivered? How many orders are delivered on time versus those delivered with a delay?
#### Tableau 
- **EDA Questions**
1. Check non-tech but related products such as accessories, including price range, delivery timelines, customer satisfaction rates, and sales.
2. Analyze phone sales where price > $500 to determine if the customer base is suitable for high-end phones.
3. Explore patterns for delayed orders and possible causes, such as product weight, size and geolocation.
4. Examine delivery times for small products (<2 kg) to compare with expected timelines for Apple products.

## Data Insights
- Segmentation of tech products - tech products accounting for approximately 10% of total sales
- Prices - the average price of tech products sold is €120.65 with approximately 1.10% being high_end_products (Eniac's average item price is €540.)
- Magist Tech sellers - tech sellers make up about 14.67% of all sellers
- Geolocation analysis - Analysis revealed that the majority of sales were concentrated along the coast of Brazil, with São Paulo being the largest market with 60% of total sales
- Magist delivery timelines - Magist has a delivery rate of 8.6% within a 3-day timeframe and 37% after extending the timeframe to 7 days. In São Paulo, however the delivery rate is 87% within a 3-day timeframe. (Eniac's timeline is 2-3 days)
  
## Recommendations
- Forge a strategic market entry partnership with Magist for tech companion products and accessories in São Paulo as a pivotal test market to acquire Brazilian market knowledge.
- Informed by the insights gathered from São Paulo, consider extending to Paraná, a region noted as the second-largest market by sales.
- Evaluate and optimizate the Magist Contract after an year to ensure alignment with Eniac's evolving business objectives and enable the refinement of contractual terms to optimize operational efficiency and mitigate risks.
  
## References
- Tableau knowledge base
- SQL documentation
- Stack Overflow
- WBS Coding School
