-- Script para crear la base de datos `gans` y tablas requeridas
CREATE DATABASE IF NOT EXISTS gans;
USE gans;

CREATE TABLE IF NOT EXISTS city_pop (
    id INT AUTO_INCREMENT PRIMARY KEY,
    municipality_iso_country VARCHAR(255) NOT NULL,
    population BIGINT,
    lat DECIMAL(9,6),
    lng DECIMAL(9,6)
);

CREATE TABLE IF NOT EXISTS airport (
    id INT AUTO_INCREMENT PRIMARY KEY,
    airport_code VARCHAR(10),
    name VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS flight_arrival (
    id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id VARCHAR(20),
    airport_code VARCHAR(10),
    arrival_time DATETIME,
    status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS weather_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255),
    date DATE,
    temp_c FLOAT,
    precip_mm FLOAT
);

-- Ejemplo de inserción en city_pop (reemplaza con datos reales desde worldcities.csv)
INSERT INTO city_pop (municipality_iso_country, population, lat, lng) VALUES
('SampleCity,SC', 500000, 19.432608, -99.133209);
