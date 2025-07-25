# 🚍 Bus Reservation System

A Java EE web application for booking and managing bus tickets. Built using Servlets, JSP, and JDBC with MVC and DAO design patterns. Ideal for learning or demonstrating skills in full-stack Java web development.

---

## 📌 Features

- 🔍 Search available buses by source, destination, and date  
- 🎫 Book bus tickets with customer details  
- 📄 View booking history  
- ❌ Cancel booked tickets  
- 🗃️ Backend: JDBC-based DAO layer for database operations  

---

## 🧰 Tech Stack

| Layer        | Technology           |
|--------------|----------------------|
| Backend      | Java Servlets, JSP   |
| Frontend     | JSP, HTML, CSS       |
| Database     | MySQL (via JDBC)     |
| Server       | Apache Tomcat 8.5+   |
| IDE          | Eclipse              |

---

## 📂 Project Structure

BusReservationSystem/
├── src/
│ ├── main/
│ │ ├── java/com/tsrtc/online/
│ │ │ ├── dao/ --> Database access logic
│ │ │ ├── model/ --> POJOs (Bus, Booking, Customer)
│ │ │ └── servlet/ --> Business logic (Booking, Cancel, View)
│ │ └── webapp/
│ │ ├── *.jsp --> Views
│ │ └── WEB-INF/web.xml --> App config
├── build/ --> Compiled classes
├── .project, .classpath --> Eclipse project configs

---

## ⚙️ Setup Instructions

1. **Import the project into Eclipse** as a Dynamic Web Project.
2. **Set up MySQL** and create the required tables (`bus`, `customer`, `booking`).
3. **Update DB credentials** in `DBUtil.java`.
4. **Configure Tomcat server** and deploy the project.
5. Open your browser and go to:  
   `http://localhost:8080/BusReservationSystem/`

---

## 🧾 Sample Database Tables

You’ll need to create tables like:

```sql
CREATE TABLE bus (
    id INT PRIMARY KEY,
    source VARCHAR(50),
    destination VARCHAR(50),
    travel_date DATE,
    seats INT
);

CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE booking (
    id INT PRIMARY KEY,
    customer_id INT,
    bus_id INT,
    status VARCHAR(20)
);
