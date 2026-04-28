<h1 align="center">⚙️ HP Jewellery - Core API Backend</h1>

<div align="center">
  <p align="center">
    <strong>A robust PHP and MySQL foundation powering the HP Jewellery Ecosystem.</strong>
    <br />
    Secure, scalable, and stateless API endpoints handling everything from auth to payments.
  </p>
  
  [![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](#)
  [![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](#)
</div>

## 📌 Contextual Overview
This repository contains pure un-templated PHP logic exposing precise, documented JSON endpoints. The central nervous system for both Admin Panels and User Applications, securely handling queries and persisting application states inside the MySQL database configuration.

## 🚀 Architectural Features
- **Stateless REST Protocols:** Clear, maintainable controller methods exposing CRUD functionalities.
- **Role-Based Authorization:** Secure endpoints validating users vs system administrators.
- **Payment Hooks:** Gateway handlers interacting safely with Razorpay webhooks and transaction validations.
- **SQL Mitigation Strategies:** Abstracted querying mapping correctly to the relational database to prevent basic injection models.

## 💻 System Configuration (Tech Stack)
- **Language:** PHP 8+ (or 7.x compliant).
- **Database Architecture:** Relational MySQL strict tables.
- **Environment:** Local architectures generally managed via XAMPP/WAMP APACHE stacks.

## 🛠️ API Setup & Installation

### 1. Structure Database Configurations
1. Access `phpMyAdmin` or your native SQL manager.
2. Formulate a new database instance named exactly `jewellerydb`.
3. Locate the `jewellerydb.sql` file located in the absolute root folder, and run/import its execution.

### 2. Initiate The Backend Services
1. Duplicate or migrate this `Jewellerydb` folder into your web server workspace (`htdocs` for XAMPP `C:/xampp/htdocs/`).
2. Start Apache and MySQL modules through the control panel.
3. Your endpoints are now live. Example endpoint route:
   ```text
   http://localhost/Jewellerydb/api/endpoint.php
   ```

### 3. Frontend Connection Setup
The User and Admin React panels must target the localhost domain directly. Ensure any `axios` base URLs point to your specific XAMPP address handling these PHP scripts. You might need to configure `.htaccess` or PHP Headers for `Access-Control-Allow-Origin: *` to prevent CORS policy blocks during local development.

## 🗃️ Simplified Endpoint Structure
- `/auth/` - Registration, Logins, Role Checks
- `/products/` - Item listings, detail fetching, categorical sorts
- `/orders/` - Placement logic, user histories, and admin order fulfillment controls.
- `/payments/` - Verification of Razorpay tokens.
