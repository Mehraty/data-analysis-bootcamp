1.	**Name:** `ProductModelAveragePrice`

**Description:** Calculates the average list price for each product model, considering only products priced above $1,000, sorted by model ID.

2.	**Name:** `OrderStatusCount`

**Description:** Counts the number of orders for each order status.

3.	**Name:** `RedProductsInPriceRange`

**Description:** Lists red products priced between $1,000 and $2,000, sorted by price from highest to lowest.

4.	**Name:** `PersonTypeCountByFirstNameA`

**Description:** Counts people by their person type, filtered to only those whose first name starts with the letter "A".

5.	**Name:** `usp_GetTotalAmount`

**Description:** Stored procedure that returns the total order amount (sum of quantity × unit price) along with the customer's company name for a given order ID.

6.	**Name:** `CustomerPurchaseSummary`

**Description:** Summarizes each customer's purchase history (order count, average, total, and max order amounts), keeping only customers with at least one order over $1,000 and an average order above $500, sorted by total purchases descending.

7.	**Name:** `HighVolumeCustomers`

**Description:** Lists customers with more than 3 orders, showing their order count, total, average, and maximum purchase amounts, sorted by total purchases descending.
8.	**Name:** `Top10BestSellingProducts`

**Description:** Uses a CTE to rank products by total sales revenue, then returns the top 10 best-selling products along with units sold and total sales amount, ordered by rank.

9.	**Name:** `LastThreeOrdersPerCustomer`

**Description:** Uses a CTE with `ROW_NUMBER()` to identify each customer's 3 most recent orders, then returns those orders sorted by customer ID (descending) and order date (descending).

10.	**Name:** `CustomersWithMoreThanThreeOrders`

**Description:** Returns customers who have placed more than 3 orders, showing their order count, sorted by number of orders descending.

11.	**Name:** `CategoriesAboveAverageSales`

**Description:** For each category, counts the number of distinct products and computes the average number of orders per product. Returns only categories whose average sales exceed the overall average across all products, sorted by average sales descending.

12.	**Name:** `ProductsAboveAverageOrderCount`

**Description:** Returns products whose distinct order count exceeds the overall average order count per product, sorted by order count ascending.

13.	**Name:** `EmployeesAboveAverageOrders`

**Description:** Returns employees whose total number of orders exceeds the average orders per employee, sorted by order count descending.

14.	**Name**: `CategorySalesSummary`

**Description**: For each category, counts distinct products sold and calculates total sales revenue (quantity × unit price). Returns only categories with at least 5 distinct products sold, sorted by total sales descending.
