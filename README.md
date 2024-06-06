# Data-Engineering
Creating Gans local and cloud data pipelines
---
## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Description and Sources](#data-description-and-sources)
3. [Data Collection Approach](#data-collection-approach)
4. [Key Considerations and Questions](#key-considerations-and-questions)
5. [Limitations and Disclaimers](#limitations-and-disclaimers)
6. [References](#references)
   
## Project Overview
Gans is a theoretical startup revolutionizing e-scooter-sharing, aiming to streamline operations in vibrant cities across Europe and the UK. To remain competitive, their success hinges on ensuring scooters are parked conveniently for users, who are assumed to be young city tourists.
- **The Challenge** - Ideally, scooters should reposition themselves organically, but real-world scenarios like daily commutes and unexpected weather changes create imbalances. For example, scooters tend to move from residential neighborhoods to city centers in the morning, or their usage drops when it rains. To better predict customer behavior, Gans needs demographic, location, airport, flights, and weather data for Berlin and London. As a Junior Data Engineer at Gans, the task is to develop an automated data pipeline that gathers real-time data from various external sources and makes it accessible to everyone in the organization, thus informing business decisions like incentivizing certain park locations.

## Data Description and Sources
The data for this project is collected from various sources harnessing ethical Web scrapping methods and API tools. Below is a brief description on each dataset:

- **city:** Contains unique data on London and Berlin such as population and geographical coordinates. This data was Web scrapped from Wikipedia. 
- **airport:** This data contains the International Civil Aviation Organization (ICAO) codes of specific airport in the particular city.
- **weather:** Contains daily weather forecasts for the cities with 3-hour intervals. It is collected using the '5 day weather forecast - OpenWeatherMap' API from OpenWeatherMap.Org.
- **flight:** Contains 'the next day' flight information expected to arrive at the specified airport. This data is collected from AeroDataBox on Rapid API, with 'GET FIDS/Schedules (airport 
 departures and arrivals) - by local time range' as the end point.

## Data Collection Approach
**Phase 1: Local Pipeline for Static Data**

In the first phase, create a local pipeline using static data on airports and cities. We employ web scraping tools.
**Tools Used**
- BeautifulSoup: A Python library used for parsing HTML and XML documents to extract data from web pages
- Requests library in Python: used to send GET requests.
- MySQL: Storage and management of collected data to ensure data integrity and consistency for various applications across the Gans organization.
  
**Phase 2: Cloud Pipeline for Dynamic Data**

In the second phase, create a cloud pipeline for dynamic data on weather and flights by leveraging APIs.

**Tools Used**
- JSON: Used to handle the data format.
- OpenWeatherMap API for weather data
- AeroDataBox API for flight data

**Phase 3: Google Cloud Automation**

Deploy data collection scripts as Google Cloud Functions.
Schedule these functions using Google Cloud Scheduler to run at your desired intervals here Cron Syntax: 55 23 * * * for every day at 23:55.

**Tools Used**
- Google Cloud Platform (GCP)

## Key Considerations and Questions
1. Data Requirements - Determine where the data is needed and which variables are important.
2. Automation - How to automate city data collection from Wikipedia and weather/flight data from APIs.
3. Data Types - Retrieve the data in the appropriate format and ensure it is stored in the correct type in the database.
4. Weather Data Limitation - How to limit weather forecasts to 24 hours to avoid duplicates.
5. Flight Data Automation: Automate the retrieval of flight data for the a full next day, given the API’s 12-hour intervals.
6. Database Linking - How establish relationships between tables in SQL.
7. Scheduling - when to schedule the functions on GCP to ensure timely updates to the database.
  
## Limitations and Disclaimers
**Resource Constraints**
- Some APIs have usage limits or costs associated with higher tiers of access, which can become expensive.
- Using cloud services like Google Cloud Platform incurs costs, which can increase with the scale of the data and the frequency of data collection.
  
**Data Integration**
- Combining data from different sources (web scraping and various APIs) requires careful handling to maintain consistency and accuracy.
- Regular maintenance as any changes in the data from APIs or data sources will need corresponding changes in the database and processing scripts.

**Data Quality and Reliability**
- Web Scraping can be unreliable due to changes in website structure, anti-scraping measures, and the potential for incomplete or outdated information.
- Dependence on third-party APIs means that any downtime, changes in API structure, or limitations (like rate limits) could impact data availability and quality.
  
## References
- Google Cloud Platform documentation
- SQL documentation
- Stack Overflow
- WBS Coding School
