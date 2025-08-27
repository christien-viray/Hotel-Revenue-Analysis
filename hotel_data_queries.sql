WITH hotels AS 
(
SELECT * FROM HOTEL_REVENUE_DATA.`2018`
UNION
SELECT * FROM HOTEL_REVENUE_DATA.`2019`
UNION
SELECT * FROM HOTEL_REVENUE_DATA.`2020`
)

SELECT * FROM hotels h
LEFT JOIN hotel_revenue_data.market_segment ms
ON h.market_segment = ms.market_segment
LEFT JOIN hotel_revenue_data.meal_cost mc
ON h.meal=mc.meal
WHERE country IS NOT NULL;
