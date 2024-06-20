Automated SQL Database Reporting with Logic Apps

Project Overview
This project aims to develop an automated reporting system using Azure Logic Apps and an Azure SQL Database. The system connects to a SQL database, retrieves sales transaction data based on specific criteria, and sends a detailed email report to relevant stakeholders on a daily or weekly basis. The project leverages the capabilities of Azure Logic Apps for workflow automation, ensuring timely and efficient distribution of sales data.

Database Schema
The database is designed to store comprehensive sales data, including details about salespersons, products, sales transactions, and regions. The schema consists of the following tables:

- **SalesPersons**:
  - `SalesPersonID` (INT, Primary Key)
  - `FirstName` (NVARCHAR(50))
  - `LastName` (NVARCHAR(50))
  - `Email` (NVARCHAR(100))

- **Regions**:
  - `RegionID` (INT, Primary Key)
  - `RegionName` (NVARCHAR(50))

- **Products**:
  - `ProductID` (INT, Primary Key)
  - `ProductName` (NVARCHAR(100))
  - `Price` (DECIMAL(10, 2))

- **SalesTransactions**:
  - `TransactionID` (INT, Primary Key)
  - `SalesPersonID` (INT, Foreign Key)
  - `RegionID` (INT, Foreign Key)
  - `ProductID` (INT, Foreign Key)
  - `TransactionDate` (DATE)
  - `Quantity` (INT)
  - `TotalSales` (DECIMAL(10, 2))

Data Population
Sample data has been populated for the purpose of testing and demonstration. This includes:
- Five salespersons with unique IDs (1-5).
- Five products with corresponding prices.
- Multiple sales transactions involving these salespersons and products across different regions and dates.

Azure Logic Apps Workflow
The Logic Apps workflow is designed to:
1. **Trigger**: Accept HTTP requests to initiate the workflow.
2. **Data Retrieval**: Connect to the SQL database and retrieve sales transaction data based on predefined criteria.
3. **Data Parsing**: Parse the retrieved data into JSON format.
4. **Data Processing**: Compose the data to maintain the JSON structure for reporting.
5. **Data Storage**: Create a blob to store the retrieved and processed data for historical records.
6. **Notification**: Send a confirmation email to specified stakeholders with the data report.

Error Handling
To ensure robustness, the workflow includes comprehensive error handling mechanisms:
- **Primary Scope**: Contains the main workflow actions.
- **Secondary Scope**: Handles errors and exceptions, ensuring that any failures trigger appropriate notifications.
- **Error Notification**: Sends detailed error alerts to system administrators for prompt resolution.

Summary
This project demonstrates the integration of Azure Logic Apps with an Azure SQL Database to automate the reporting process. By retrieving and processing sales transaction data and distributing it via email, the system enhances operational efficiency and ensures timely access to critical sales information. The robust error handling mechanisms further ensure reliability and quick troubleshooting.

This solution is ideal for organizations looking to streamline their data reporting processes and leverage cloud-based automation for improved business operations.
