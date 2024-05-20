/***************************
Setting up the environment

Drop the database if it already exists
DROP DATABASE IF EXISTS gans ;

***************************/

CREATE DATABASE gans;

CREATE TABLE city(
	city_id INT AUTO_INCREMENT,
    city VARCHAR(255),
    country VARCHAR(255),
    population INT,
    latitude VARCHAR(20),
    longitude VARCHAR(20),
    PRIMARY KEY (city_id)
    );
    
CREATE TABLE airport(
	ICAO VARCHAR(4),
    city_id INT,
    PRIMARY KEY (ICAO),
    FOREIGN KEY (city_id) REFERENCES city(city_id)
    );
  
CREATE TABLE weather(
	weather_id INT AUTO_INCREMENT,
    city_id INT,
    city VARCHAR(255) NOT NULL,
    forecast_time  TIMESTAMP,
    temperature  FLOAT,
    feels_like  FLOAT,
    forecast VARCHAR(255),
	rain_in_last_3h FLOAT,
    wind_speed FLOAT,
    wind_gust FLOAT,
    rain_probability FLOAT,
    part_of_day VARCHAR(255),
	data_retrieved_at TIMESTAMP,
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES city(city_id)
    );
    
 CREATE TABLE flight(
        ICAO VARCHAR(4),
        flight_id INT AUTO_INCREMENT,
        departure_airport VARCHAR(255),
        arrival_time DATETIME,
        airline VARCHAR(255),
        terminal VARCHAR(255),
        flight_status VARCHAR(255),
        isCargo VARCHAR(255),
		flight_number VARCHAR(255),
        PRIMARY KEY (flight_id),
    FOREIGN KEY (ICAO) REFERENCES airport(ICAO)
    );
       
  
    
    USE gans;
 SELECT* 
 FROM city;  
 
 SELECT* 
 FROM airport; 
 
 SELECT* 
 FROM weather;
 
 SELECT* 
 FROM flight; 


