-- write your queries underneath each number:
 
-- 1. the total number of rows in the database

SELECT COUNT(*) FROM hollywood;

-- 2. show the first 15 rows, but only display 3 columns (your choice)

SELECT domestic_sales, international_sales, world_sales FROM hollywood LIMIT 15;

-- 3. do the same as above, but chose a column to sort on, and sort in descending order

SELECT domestic_sales, international_sales, world_sales FROM hollywood ORDER BY domestic_sales DESC LIMIT 15;

-- 4. add a new column without a default value

ALTER TABLE hollywood ADD dom_plus_int_sales bigint;

-- 5. set the value of that new column

UPDATE hollywood SET dom_plus_int_sales = domestic_sales+international_sales;

-- 6. show only the unique (non duplicates) of a column of your choice

SELECT DISTINCT distributor AS unique_types FROM hollywood;

-- 7.group rows together by a column value (your choice) and use an aggregate function to calculate something about that group 

SELECT domestic_sales, AVG(international_sales) AS mean_international_sales FROM hollywood GROUP BY domestic_sales ORDER BY mean_international_sales DESC;

-- 8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups 

SELECT domestic_sales, AVG(international_sales) AS mean_international_sales FROM hollywood GROUP BY domestic_sales HAVING AVG(international_sales) > 1000000000 ORDER BY mean_international_sales DESC;


-- 9. Calculate the mean domestic sales

SELECT AVG(domestic_sales) as mean_domestic_sales FROM hollywood;

-- 10. Calculate the number of movies which had international sales exceeding 1000000000

SELECT COUNT(*) from hollywood WHERE international_sales > 1000000000;

-- 11. Calculate the maximum and minimum of domestic sales

SELECT MAX(domestic_sales) AS max_domestic_sales, MIN(domestic_sales) AS min_domestic_sales FROM hollywood;

-- 12. Calculate the sum of domestic sales for movies that had world sales exceeding 2000000000

SELECT SUM(domestic_sales) FROM hollywood WHERE international_sales > 2000000000;
