# student-social-media-impact-analysis
SQL and Power BI analysis of social media usage impact on student addiction, mental health, sleep, and academic performance.
# 📊 Social Media Usage & Academic Impact Analysis

## 📌 Project Overview
This project analyzes how social media usage affects students’ **addiction levels, mental health, sleep patterns, and academic performance**.  
Using **SQL for data analysis** and **Power BI for visualization**, the project identifies high-risk behavioral patterns and platform-specific risks to support **data-driven decision making**.

The goal of this project is not just to visualize data, but to derive **actionable, decision-oriented insights** related to student well-being and academic risk.

---

## 🎯 Objectives
- Analyze social media usage patterns across students
- Measure the relationship between usage duration and addiction severity
- Evaluate the impact of addiction on mental health, sleep, and academics
- Identify high-risk social media platforms
- Present insights using an interactive Power BI dashboard

---

## 🗂 Dataset
- **Source:** [Student Social Media Addiction dataset (CSV)](https://github.com/Mehek21/student-social-media-impact-analysis/blob/9d131e3e73045a856200f477f39dc1f94ad787b2/Data/Students%20Social%20Media%20Addiction.csv)
- **Records:** 700+ students
- **Key Variables:**
  - Age, Gender, Country, Academic Level
  - Most Used Platform
  - Average Daily Usage Hours
  - Addiction Score
  - Mental Health Score
  - Sleep Hours per Night
  - Academic Performance Impact
  - Conflicts Over Social Media

---

## 🛠 Tools & Technologies
- **SQL**
  - Data cleaning and validation
  - Exploratory analysis
  - Advanced queries using CTEs and window functions (NTILE, RANK)
- **Power BI**
  - Interactive dashboards
  - DAX measures
  - Heatmaps and platform risk matrix
- **GitHub**
  - Project documentation and version control

---

## 🧪 SQL Analysis
The SQL analysis was conducted in three stages:

### 1️⃣ Data Preparation
- Database and table creation
- CSV import
- Null value checks
- Range and sanity validations
- Feature engineering (usage category, addiction level)

### 2️⃣ Exploratory Analysis
- Student distribution by academic level and platform
- Average daily usage and addiction scores
- Academic impact percentage
- Gender and relationship-based comparisons

### 3️⃣ Advanced Business Analysis
- Top 10% most addicted students using percentile analysis
- Academic risk among heavy users (>5 hours/day)
- Platform-level addiction ranking
- Addiction vs sleep and mental health impact

📁 **Full SQL queries are available in:**  
 [SQL Files](https://github.com/Mehek21/student-social-media-impact-analysis/tree/9d131e3e73045a856200f477f39dc1f94ad787b2/SQL))
---

## 📊 Power BI Dashboard
The Power BI report is structured into **three analytical pages**:

### 🔹 Page 1: Overview
- Total students
- Average daily usage
- Average addiction score
- Percentage of students reporting academic impact
- Platform usage distribution

### 🔹 Page 2: Behavioral Impact Analysis
- Addiction vs sleep duration
- Addiction vs mental health
- Addiction vs academic impact
- Usage category analysis

### 🔹 Page 3: Platform Risk & Insights
- Platform risk matrix (Addiction vs Mental Health)
- Insights
- High-addiction platform contribution
- Platform comparison table with key metrics

📁 **Power BI file:**  
[/powerbi/Student_Social_Media_Impact.pbix
](https://github.com/Mehek21/student-social-media-impact-analysis/blob/9d131e3e73045a856200f477f39dc1f94ad787b2/PowerBI/Student_Social_Media_Impact.pbix)

📷 **Dashboard previews:**  
[Dashboard PDF](https://github.com/Mehek21/student-social-media-impact-analysis/blob/9d131e3e73045a856200f477f39dc1f94ad787b2/media%20impact.pdf)

---

## 📈 Key Decision-Oriented Insights
- Students using social media **more than 5 hours per day are 2× more likely** to report academic performance impact.
- **TikTok, Snapchat, and WhatsApp** account for over **60% of high-addiction users**, making them priority platforms for intervention.
- Severe addiction is associated with **~2 hours less sleep per night** compared to mild addiction.
- Mental health scores decline by **~30%** as addiction severity increases.
- Platforms such as **LinkedIn and LINE** show lower addiction, better sleep duration, and higher mental health scores, establishing a low-risk benchmark.

---

## ✅ Outcome
This project demonstrates **end-to-end data analytics capability**, from raw data preparation in SQL to insight-driven visualization in Power BI.  
It highlights the ability to:
- Translate business questions into analytical queries
- Apply advanced SQL techniques
- Design dashboards with clear storytelling
- Deliver actionable insights rather than descriptive charts

---

## 📂 Repository Structure
