# **GA4 Ecommerce Conversion & Revenue Analysis**
## **Data Analyst Case Study using BigQuery (SQL)**

---

## **Overview**

This case study analyzes ecommerce user behavior using Google Analytics 4 (GA4) event-level data queried in Google BigQuery.

The goal of the analysis was to understand why high website traffic and strong user engagement were not translating into proportional revenue. The focus was on identifying where users drop off in the ecommerce journey and which factors most strongly influence conversions and revenue.

The analysis was performed directly on raw GA4 event data using SQL to evaluate conversion behavior, revenue drivers, traffic quality, and user retention patterns.

---

## **Business Context**

The ecommerce platform attracts a large volume of users and shows strong engagement signals such as page views, session starts, and product views. Users actively explore products and spend time on the site.

However:
- Purchase activity remains low  
- Revenue growth does not scale with traffic  
- Most users do not return after their first visit  

Marketing efforts are ongoing, but stakeholders lack clear visibility into where the purchase journey breaks and which levers should be prioritized to improve business performance.

---

## **Business Problem Statement**

Why does high traffic and engagement fail to convert into revenue, and what actions can be taken to improve conversion rates and revenue outcomes?

---

## **Dataset Information**

**Source:** GA4 Public Ecommerce Dataset  

### **Data Characteristics**
- Event-level GA4 data  
- Key events include `page_view`, `view_item`, `add_to_cart`, `begin_checkout`, and `purchase`  
- Product-level data stored in nested `items`  
- User, session, and traffic source attributes included  

---

## **Tools Used**

- Google BigQuery  
- SQL  
- GA4 event-based data model  
- GitHub  

---

## **My Role as a Data Analyst**

I handled the analysis end to end, including:
- Validating the reliability and consistency of GA4 events  
- Writing SQL queries on raw event-level data  
- Analyzing user engagement and conversion behavior  
- Building and evaluating the ecommerce conversion funnel  
- Analyzing revenue contribution by product and traffic source  
- Identifying conversion leakage and retention gaps  
- Translating insights into practical business recommendations  

---

## **Analytical Approach**

The analysis followed a structured data analyst workflow:
1. Data validation and event distribution analysis  
2. Engagement versus revenue comparison  
3. Conversion funnel analysis  
4. Revenue and product contribution analysis  
5. Traffic source performance evaluation  
6. User retention analysis (new vs returning users)  

---

## **Key Analysis and Observations**

### **Event Distribution**

Page view and session-related events account for the majority of overall activity. Events directly associated with revenue, such as add-to-cart, begin-checkout, and purchase, occur at significantly lower volumes.

This shows that most users interact at the browsing level and do not progress far into the purchase journey.

---

### **User Engagement Across Funnel Stages**

A large number of users reach early stages like product views, but only a small fraction move forward to checkout and purchase.

This indicates that traffic acquisition is working, while conversion efficiency is the primary issue.

---

### **Conversion Funnel Behavior**

The funnel analysis shows:
- Strong engagement at the product view stage  
- A noticeable drop at add-to-cart  
- A sharp decline between add-to-cart and purchase  

The largest conversion loss occurs after users demonstrate purchase intent, pointing to checkout-related friction rather than lack of interest in products.

---

### **Traffic Source Performance**

Google and Direct traffic sources generate the highest engagement. However, not all traffic sources contribute equally to revenue.

Some sources drive volume without strong conversion performance, highlighting differences in traffic quality and user intent.

---

### **Product-Level Revenue Contribution**

Revenue is concentrated among a small number of products, while many products contribute little despite receiving views.

This pattern suggests the need for focused product prioritization rather than uniform promotion.

---

### **Engagement vs Revenue Gap**

When total events, unique users, and purchases are compared together, a clear gap emerges between engagement and revenue generation.

The business performs well at attracting and engaging users but struggles to convert them into paying customers.

---

## **Key Insights**

- Most users drop off before completing checkout  
- Checkout is the primary conversion bottleneck  
- Revenue is concentrated among a small subset of products and users  
- Traffic sources differ significantly in conversion effectiveness  
- User retention is weak  

---

## **Business Recommendations**

Based on the analysis:
- Simplify the checkout experience and reduce friction  
- Enable guest checkout and strengthen trust signals  
- Allocate marketing spend toward high-performing traffic sources  
- Focus promotions on top revenue-generating products  
- Introduce remarketing and retention initiatives  

---

## **Project Outcome**

This case study demonstrates how analyzing raw GA4 event-level data using BigQuery SQL can explain why strong traffic does not automatically lead to strong revenue performance.

The findings provide clear, actionable insights that can support improvements in conversion, marketing efficiency, and long-term growth.

---

## **Author**

**Priyanka Lakra**  
Data Analyst  
Skills: SQL, BigQuery, GA4  

---

## **Note**

This project uses publicly available GA4 demo data.  
All insights are based on observed data patterns and real-world ecommerce analytics reasoning.
