# 🚗Taxi service project!🚗

There you can see my project of simple taxi service. 
It is presented by 3-tier architecture: DAO, Service, and Controller.

## Features
This simple service provides you to:
* Create users presented by Drivers.
* Log in / Log out.
* Display all Drivers / Cars / Manufacturers.
* Delete or Create Driver / Car / Manufacturer.
* Add Driver to Car.

## Dependencies
* Java 17.
* JDBC 8.0.
* JSTL 1.2.
* Maven 3.8.7.
* Maven Checkstyle Plugin 3.1.1.
* MySQL 8.0.32.
* Servlet 4.0.1.
* Tomcat 8.5.

## Structure
### Controllers
Car:
* CreateCarController
* DeleteCarController
* GetAllCarsController
* AddDriverToCarController
* GetCarDriversController
* RemoveDriverFromCarController

Driver:
* CreateDriverController
* DeleteDriverController
* GetAllDriversController
* GetMyCurrentCarsController

Manufacturer:
* CreateManufacturerController
* DeleteManufacturerController
* GetAllManufacturersController

### Models
The project includes models of Car, Driver and Manufacturer.
It also includes DAO and Services based on this model.
DAO implements CRUD operations.

## Quick start
For a quick start, you need:
1. Clone this repository to your local machine.
2. Download My SQL Server.
3. Run SQL script at the file `init_db.sql`.
4. Set up ConnectionUtil with your credentials.
5. Start the project using Tomcat webserver.
