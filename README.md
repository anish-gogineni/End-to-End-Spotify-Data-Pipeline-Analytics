# **End-to-End Spotify Data Pipeline & Analytics**  
End-to-End Spotify Data Pipeline with AWS, Snowflake & Power BI  

## **Overview**  
This project extends my previous **[Spotify Data Engineering Project](https://github.com/anish-gogineni/Spotify_Data_Engineering_Project.git)** by integrating **Snowflake, AWS Lambda, and Snowpipe** for automated data ingestion and analysis. Additionally, I connected **Power BI** to the Snowflake warehouse for data visualization and insights.  

## **Project Architecture**  
The following architecture diagram provides an overview of the **ETL (Extract, Transform, Load) process**:  

![Spotify Data Pipeline Architecture](aws-snowflake-architecture.png)  

### **Data Flow**  
1. **Data Extraction**: AWS Lambda extracts data from the **Spotify API** and sends it to an **S3 bucket**.  
2. **Data Transformation**: A second **AWS Lambda function** processes and refines the extracted data.  
3. **Data Ingestion**: Snowpipe automatically loads data from **S3 into Snowflake**.  
4. **Data Analysis & Visualization**: Power BI connects to Snowflake for advanced **data analytics and visualization**.  

## **Snowflake SQL Scripts**  
The following SQL scripts set up the Snowflake environment:  

✅ **[`01_s3_integration.sql`](snowflake_scripts/01_s3_integration.sql)** → Establishes an **AWS S3 Integration** with Snowflake.  
✅ **[`02_create_tables.sql`](snowflake_scripts/02_create_tables.sql)** → Creates the **Spotify database and tables**.  
✅ **[`03_s3_external_stages.sql`](snowflake_scripts/03_s3_external_stages.sql)** → Defines **External Stages** for AWS S3.  
✅ **[`04_snowpipes.sql`](snowflake_scripts/04_snowpipes.sql)** → Creates **Snowpipe pipelines** for automated data ingestion.  

## **Technologies Used**  
- **Snowflake** (Data Warehouse)  
- **AWS Lambda** (Serverless Functions)  
- **Amazon S3** (Cloud Storage)  
- **Snowpipe** (Automated Data Ingestion)  
- **SQL & Python** (Data Processing)  
- **Power BI** (Data Visualization)  

## **Tables & Data Flow**  
- `tbl_album` - Stores album details.  
- `tbl_artist` - Stores artist-related data.  
- `tbl_songs` - Stores track-level information.  

## **Power BI Analytics**  
After successfully populating **Snowflake tables**, I connected **Power BI** to the data warehouse and performed **data analytics**. The **Power BI report file** can be found at:  

📂 **[PowerBI/spotify_top_100_analysis](PowerBI/spotify_top_100_analysis.pbix)**  

### **Key Insights from Power BI Dashboard:**  
✅ **Top Songs by Popularity** 🎵  
✅ **Top Artists by Number of Top Songs** 🎤  
✅ **Album Release Trends Over Time** 📅  
✅ **Most Popular Albums** 💿  


## **Next Steps**  
- Optimize **Snowpipe performance** for faster data ingestion.  
- Expand analytics with **DAX measures** in Power BI.  
- Implement **incremental data refresh** in Power BI for real-time insights.  
