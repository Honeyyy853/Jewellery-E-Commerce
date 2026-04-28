<h1 align="center">💎 HP Jewellery - Premium E-Commerce Platform</h1>

<div align="center">
  <p align="center">
    <strong>A full-stack, end-to-end e-commerce solution tailored for premium jewelry retail.</strong>
    <br />
    Featuring seamlessly integrated Admin, User, and Backend APIs for an optimized shopping experience.
  </p>
  
  [![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](#)
  [![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](#)
  [![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](#)
  [![Razorpay](https://img.shields.io/badge/Razorpay-02042B?style=for-the-badge&logo=razorpay&logoColor=3395FF)](#)
</div>

## 📌 Architecture Overview

HP Jewellery follows a strictly separated full-stack architecture, isolating business logic, administrative operations, and user interactions.

- **Frontend (Client/User):** Built strictly with React.js, delivering a fluid, dynamic, and responsive shopping experience.
- **Admin Dashboard:** A distinct React.js application strictly serving authorized administrators to manage users, products, orders, and system analytics.
- **Backend (API Layer):** A scalable PHP architecture managing data constraints, authentication validations, secure payments routing, and acting as a bridge.
- **Database:** MySQL strictly enforces relational mapping of products, user identities, complex order tables, and authorization constraints.

## 📁 Folder Structure

```text
HPjewellery/
├── Jewellery-User-Panel-main/  # Customer-facing Frontend (React.js)
├── Jewellery-Admin-Panel-main/ # Admin Management Dashboard (React.js)
├── Jewellerydb/                # RESTful Backend API (PHP + MySQL Queries)
└── jewellerydb.sql             # Relational Database Schema & Seed Data
```

## 🚀 Key Features

### 🛒 User Panel (Frontend)
- **Product Discovery:** Advanced filtering, categorized browsing, and dynamic search.
- **Seamless Cart & Checkout:** Persistent cart logic with Razorpay payment integration.
- **User Authentication:** Secure registration, login, and personalized profile spaces.
- **Order Tracking:** Detailed past orders and real-time order status tracking.

### 🔐 Admin Panel (Dashboard)
- **Inventory Management:** Full CRUD operations for jewelry pieces, categories, and inventory parameters.
- **Order Lifecycle Management:** Trace orders from placement to fulfillment and shipment.
- **User Management:** Oversee registered user demographics and perform administrative overrides.
- **System Analytics:** High-level overview of revenue metrics, top-performing items, and sales trends.

### ⚙️ Backend & API System
- **Secure Authentication:** Robust role-based access control (RBAC).
- **Payment Processing:** Integrated with Razorpay test mode for safe transaction simulations.
- **Stateless REST APIs:** Clean routing protocols formatting JSON models for frontend consumption.

## 🛠️ Installation & Setup Guide

### 1. Database Configuration
1. Install and launch **XAMPP / WAMP**.
2. Open **phpMyAdmin** (`http://localhost/phpmyadmin`).
3. Create a new database named `jewellerydb`.
4. Import the provided root `jewellerydb.sql` file into the new database.

### 2. Backend Setup (PHP APIs)
1. Move the `Jewellerydb` folder into your local server's root (`C:/xampp/htdocs/` for XAMPP).
2. Configure your database connections in the PHP config files if necessary. 
3. The API will now be accessible via `http://localhost/Jewellerydb/`.

### 3. Admin Panel Setup
1. Open a terminal and navigate to: `cd Jewellery-Admin-Panel-main`
2. Install dependencies: `npm install`
3. Start the Vite/React development server: `npm run dev`
4. Access via provided `localhost` URL (usually `http://localhost:5173`).

### 4. User Panel Setup
1. Open a new terminal and navigate to: `cd Jewellery-User-Panel-main`
2. Install dependencies: `npm install`
3. Start the Vite/React development server: `npm run dev`
4. Access via provided `localhost` URL (usually `http://localhost:5174`).

## 💳 Payment Integration Note
This system utilizes the **Razorpay Payment Gateway** configured in Test Mode. Use Razorpay test credentials to simulate purchases seamlessly. Ensure your API keys in the `.env` or configuration files are mapped correctly.

## 📸 System Screenshots

### User Application
![User Home Placeholder](#) | ![Product UI Placeholder](#)
--- | ---
*Customer Homepage View* | *Product Details View*

### Admin Dashboard
![Admin Dashboard Placeholder](#) | ![Admin Controls Placeholder](#)
--- | ---
*Main Executive Dashboard* | *Inventory Management Control*

## 🔮 Future Improvements
- [ ] Migrate PHP APIs to Node.js / Express for unified ecosystem language.
- [ ] Implement Redis Caching for heavy product lists and complex filtering.
- [ ] Incorporate comprehensive testing via Jest and React Testing Library.
- [ ] Upgrade Razorpay to production environment with dynamic keys.

## 👨‍💻 Author Information
Developed as a premium full-stack demonstration. Perfect for modern showcase and functional production scaling. Have questions or feedback? Feel free to reach out via GitHub Issues or discussions!
