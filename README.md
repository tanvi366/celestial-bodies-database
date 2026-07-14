# Universe Database (PostgreSQL)

## Overview

The **Universe Database** is a postgreSQL database named 'universe' that models objects in space and their relationships. It contains five main tables:

- 'galaxy'
- 'solarSystem'
- 'star'
- 'planet'
- 'moon'

The database represents the hierarchy of celestial objects from galaxies to moons.

## Database Structure

The relationships between tables are:
Galaxy
|
└──SolarSystem
|
└──Star
|
└──Planet
|
└──Moon
