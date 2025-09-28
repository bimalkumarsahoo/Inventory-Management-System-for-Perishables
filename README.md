# Inventory Management System for Perishables  
### Dynamic Pricing using Meta-heuristic Algorithms  

**Author:** Bimal Kumar Sahoo  
**Supervisor:** Prof. Jitender Kumar Jha  
**Department:** Industrial & Systems Engineering, IIT Kharagpur  

---

## 📌 Overview
This project is an **M.Tech dissertation at IIT Kharagpur** focused on developing a dynamic inventory management model for **perishable products** such as fresh food, dairy, and pharmaceuticals.  
The system integrates **probabilistic modeling**, **dynamic pricing**, and **meta-heuristic algorithms** (Genetic Algorithm, Particle Swarm Optimization, and Simulated Annealing) to:  
- Minimize wastage  
- Optimize reorder decisions  
- Maximize expected profit  

A **Windows desktop application** was developed using **MATLAB App Designer**, designed as a standalone system or as a **plugin module** for retail inventory systems.

---

## ⚙️ Features
- Implements **dynamic pricing engine** based on product freshness and demand.  
- Supports **Genetic Algorithm (GA)**, **Particle Swarm Optimization (PSO)**, and **Simulated Annealing (SA)** for optimization.  
- Imports past **sales data in Excel format** for simulation.  
- Provides decision support:  
  - Reorder Time  
  - Reorder Quantity  
  - Discount Factor  
  - Expected Profit  

---

## 📥 Input Parameters
The system requires the following inputs from the user:  
- **Product Details:** Expiry date, Cost price, Selling price  
- **Planning Horizon (T):** Time period under consideration  
- **Customer Parameters:**  
  - Minimum utility value  
  - Utility factors (α, A)  
- **Algorithm Selection:** GA, PSO, or SA  
- **Simulation Settings:** Number of iterations  

---

## 📤 Output Parameters
After running simulations, the application provides:  
- **Reorder time** (optimal period for placing orders)  
- **Reorder quantity** (how much inventory to order)  
- **Discount factor (β)** (intensity of price decrease with freshness)  
- **Expected profit / minimum expected loss**  
- **Iteration-wise profit trends** (visualized in MATLAB plots)  

---

## 📊 Analysis & Results
- **Genetic Algorithm** and **Particle Swarm Optimization** showed superior performance in reaching near-optimal solutions.  
- **Simulated Annealing** was computationally faster but less accurate.  
- Sensitivity analysis demonstrated that customer utility, discount rates, and reorder levels significantly affect profitability.  
- Under high-demand scenarios (higher α values), expected profit stabilized at ~₹64,000 with minimal wastage.  
- The system effectively replicated **real-world retail conditions** such as holidays and no-sale days.  

---

## 🔮 Future Scope
- Extend the system to **multi-product optimization** with product interdependencies.  
- Incorporate **customer segmentation** with varying income and utility preferences.  
- Enhance the desktop app with advanced error handling and user controls (e.g., stop/pause simulation).  
- Explore deployment with **cloud integration** for large-scale retail networks.  

---

## 📎 Repository
GitHub URL: [Inventory Management System for Perishables](https://github.com/bimalkumarsahoo/Inventory-Management-System-for-Perishables)

---
