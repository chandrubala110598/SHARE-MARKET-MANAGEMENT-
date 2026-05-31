# Share Market Management System 📈

A SQL-based database management system that simulates a share market environment,
managing investors, stocks, transactions, and portfolios.

## 🗄️ Database Tables

| Table | Description |
|-------|-------------|
| `Stock` | Stock details with sector and market type (BSE/NSE) |
| `Investor` | Investor profiles with balance |
| `Transaction` | Buy/sell transaction records |
| `Portfolio` | Current stock holdings per investor |
| `Stock_Price` | Historical stock prices |

## 📊 Sample Data
- **15 Stocks** — TCS, Reliance, HDFC Bank, Infosys, and more
- **15 Investors** — across Delhi, Mumbai, Bangalore, Chennai, etc.
- **15 Transactions** — dated January 2025
- Markets covered: **BSE & NSE**

## 🔍 Queries Included

### Investor Queries
- List investors with no transactions
- Investors with balance > ₹5,00,000
- Investors owning IT sector stocks
- Total balance of all investors

### Stock Queries
- Stocks with price > ₹2,000
- Highest priced stock
- All NSE-listed stocks
- Stocks with sector details

### Transaction Queries
- Transaction history for a specific stock
- Total value of each transaction
- Stocks bought by an investor in the past month
- Total shares bought by each investor

### Portfolio Queries
- Total shares owned per investor
- Portfolio value (quantity × current price)
- Investor with most shares in a stock
- Stocks owned with current prices

### DML Operations
- Add new stock
- Delete a transaction
- Update investor balance after transaction

## 🛠️ Tools Used
- SQL Server / MySQL
- SSMS / MySQL Workbench

## 🚀 How to Run
1. Open your SQL editor (SSMS or MySQL Workbench)
2. Run `CREATE DATABASE SHARE_MARKET_MANAGEMENT_SYSTEM`
3. Execute all `CREATE TABLE` statements
4. Run all `INSERT` statements to load sample data
5. Execute any query from the queries section

## 📁 Files
- `share_market.sql` — Complete SQL script with tables, data, and queries
## 👤 Author
  Balachandar M

## 👤 Author
[Your Name]
