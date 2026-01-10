
### **Data Characteristics**
- Event-level GA4 data
- Key events: `page_view`, `view_item`, `add_to_cart`, `begin_checkout`, `purchase`
- Product data stored in nested `items`
- Includes user, session, and traffic source attributes

---

## **Tools Used**

- Google BigQuery
- SQL
- GA4 event-based data model
- GitHub

---

## **My Role as a Data Analyst**

I independently handled the complete analysis lifecycle:
- Validated GA4 event data consistency and reliability
- Wrote SQL queries on raw event-level data
- Analyzed user engagement and conversion behavior
- Built and evaluated the ecommerce conversion funnel
- Analyzed revenue by product and traffic source
- Identified conversion leakage and retention gaps
- Translated findings into business-focused recommendations

---

## **Analytical Approach**

The analysis followed a structured data analyst workflow:
1. Data validation and event distribution checks
2. Engagement versus revenue comparison
3. Conversion funnel analysis
4. Revenue and product contribution analysis
5. Traffic source performance evaluation
6. User retention analysis (new vs returning users)

---

## **Key Analysis and Observations**

### **Event Distribution**

Event-level outputs show that page views and session-related events dominate overall activity. Events directly tied to revenue, such as add-to-cart, begin-checkout, and purchase, occur at much lower volumes.

This indicates that most users interact only at the browsing level and do not progress deep into the purchase journey.

---

### **User Engagement Across Funnel Stages**

A large number of users trigger early-stage events such as product views, but only a small subset proceed to checkout and complete purchases.

This confirms that traffic acquisition is not the primary issue; conversion efficiency is.

---

### **Conversion Funnel Behavior**

The funnel analysis highlights:
- Strong product view activity
- A noticeable drop at add-to-cart
- A very sharp drop between add-to-cart and purchase

The largest conversion leakage occurs after users show purchase intent, suggesting checkout friction rather than lack of product interest.

---

### **Traffic Source Performance**

Traffic source analysis shows that Google and Direct traffic generate the highest engagement. However, not all traffic sources contribute equally to revenue.

Some sources drive volume without meaningful conversion, indicating differences in traffic quality and user intent.

---

### **Product-Level Revenue Contribution**

Revenue analysis reveals that a small number of products generate the majority of total revenue, while many products contribute marginally despite being viewed.

This highlights strong revenue concentration and the need for product prioritization.

---

### **Engagement vs Revenue Reality**

When comparing total events, unique users, and purchases together, the gap between engagement and revenue becomes clear.

The business is effective at attracting and engaging users but inefficient at converting them into paying customers.

---

## **Key Insights**

- Most users drop off before completing checkout
- Checkout is the primary conversion bottleneck
- Revenue depends on a small subset of products and users
- Traffic sources vary significantly in conversion quality
- User retention is weak

---

## **Business Recommendations**

Based on the analysis:
- Simplify and optimize the checkout process
- Enable guest checkout and improve trust signals
- Focus marketing spend on high-performing traffic sources
- Promote top revenue-generating products more aggressively
- Implement remarketing and retention strategies

---

## **Project Outcome**

This case study demonstrates how raw GA4 event-level data analyzed using BigQuery SQL can explain why strong traffic does not automatically convert into revenue.

The analysis provides clear, actionable insights that can support product optimization, marketing strategy, and revenue growth decisions.

---

## **Author**

**Priyanka Lakra**  
Data Analyst  
Skills: SQL, BigQuery, GA4  

---

## **Note**

This project uses publicly available GA4 demo data.  
Insights are based on observed data patterns and real-world ecommerce analytics reasoning.
