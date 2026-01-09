# **GA4 Ecommerce Analysis using BigQuery (SQL)**

## Overview
This project analyzes ecommerce user behavior using Google Analytics 4 (GA4) event-level data available in BigQuery.  
The objective is to understand why strong website traffic and engagement do not convert into proportional revenue and to identify actionable opportunities to improve business performance.

The project follows a real-world Data Analyst workflow:
**Data Validation → SQL Analysis → Insights → Business Recommendations**

---

## Business Context
The ecommerce business receives healthy website traffic and high product views. Users actively browse products, but purchase conversions and revenue remain low.  
Marketing investments are ongoing, yet the business lacks clarity on:
- Where users drop off in the purchase journey
- What drives revenue
- Which traffic sources and products are most valuable
- Whether users return after their first visit

This analysis supports data-driven decisions around conversion optimization, revenue growth, marketing effectiveness, and customer retention.

---

## Dataset Information

### Dataset Source
- **Google Analytics 4 (GA4) Demo Ecommerce Dataset**
- Publicly available in BigQuery

### BigQuery Table
bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*

### Data Characteristics
- Event-level ecommerce data
- Key events: `page_view`, `view_item`, `add_to_cart`, `purchase`
- Product-level data stored as nested `items`

---

## Tools & Technologies
- Google BigQuery  
- SQL  
- GA4 data model  
- GitHub (documentation & version control)

---

## Appoach i followed 
As a Data Analyst, my responsibilities included:
- Validating data quality and reliability
- Performing SQL-based analysis on event-level data
- Analyzing user behavior and conversion funnels
- Evaluating revenue, product, and traffic source performance
- Translating findings into actionable business recommendations

---

## Analysis Performed
- Data validation and sanity checks
- Event distribution and engagement analysis
- Ecommerce funnel analysis (view → cart → purchase)
- Revenue performance analysis
- Product-level revenue analysis
- Traffic source analysis
- New vs returning user analysis

---

## Key Insights
- A significant drop-off occurs between **add_to_cart** and **purchase**
- High traffic and engagement do not translate into revenue
- A small number of products contribute a large share of total revenue
- Organic and direct traffic dominate user acquisition
- User retention is weak; most users are first-time visitors

---

## Business Recommendations
- Optimize checkout flow to reduce friction and drop-offs
- Improve trust signals and enable guest checkout
- Focus marketing efforts on high-performing acquisition channels
- Promote top revenue-generating products
- Implement retention strategies such as remarketing and loyalty programs

---


---

## Project Outcome

This project demonstrates how GA4 event-level data can be analyzed using BigQuery SQL to move beyond dashboards and support real business decisions.  
The analysis clearly explains why strong traffic does not convert into revenue and provides a roadmap for improving ecommerce performance.

---

## Project Summary

**Analyzed GA4 event-level ecommerce data in BigQuery to identify funnel drop-offs, revenue drivers, traffic source performance, and retention gaps, and delivered actionable business recommendations.**

created by:priyanka lakra
