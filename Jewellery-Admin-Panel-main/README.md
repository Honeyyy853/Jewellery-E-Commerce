<h1 align="center">🔐 HP Jewellery - Admin Dashboard</h1>

<div align="center">
  <p align="center">
    <strong>The centralized management hub for the HP Jewellery E-Commerce Ecosystem.</strong>
    <br />
    Take absolute control over inventory, user demographics, order fulfillment, and system analytics.
  </p>
  
  [![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](#)
  [![Vite](https://img.shields.io/badge/Vite-B73BFE?style=for-the-badge&logo=vite&logoColor=FFD62E)](#)
  [![TailwindCSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](#)
</div>

## 📌 Project Overview
The Admin Panel is a dedicated, secure application allowing system administrators to oversee the entirety of the HP Jewellery operations. Designed strictly separating public interactions from business controls, ensuring maximum security, performance, and analytical insight.

## 🚀 Key Features
- **High-Level Analytics Dashboard:** Instant metrics covering revenue streams, total orders, and user registration velocity.
- **Product Management Suite:** Efficient CRUD layout to manage items, pricing, stock variables, and categorizations.
- **Order Processing Routing:** Follow orders strictly from 'Pending' through to 'Completed' execution.
- **User & Role Administration:** Oversight on user metadata.
- **Responsive Layout Design:** Accessible management interfaces across all devices using modern CSS/Tailwind implementations.

## 💻 Technology Stack
- **Frontend Framework:** React.js
- **Build Tool:** Vite (for rapid HMR)
- **Styling:** CSS3, potentially TailwindCSS integration
- **State Management:** React Hooks/Context (or Redux if applicable)
- **API Integration:** Fetch / Axios communicating securely with PHP Endpoints

## 🛠️ Setup & Run Instructions

### Prerequisites
- Assure Node.js (v16+) is strictly installed.
- Ensure the backend PHP server (`Jewellerydb`) is running locally (commonly on XAMPP/WAMP port 80).

### Installation Steps
1. Navigate directly to the admin source:
   ```bash
   cd Jewellery-Admin-Panel-main
   ```
2. Inject required modular dependencies:
   ```bash
   npm install
   ```
3. Initialize the development environment:
   ```bash
   npm run dev
   ```
4. Access the portal typically at `http://localhost:5173` (port may vary based on Vite defaults).

> **Note:** For API connections mapped in components, ensure CORS configurations in your PHP backend allow local React origins.

## 📸 Dashboard Previews

