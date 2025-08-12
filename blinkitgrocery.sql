select * from `blinkit grocery data`;
select count(*) from `blinkit grocery data`;

UPDATE `blinkit grocery data`
SET `Item Fat Content`=
CASE
WHEN `Item Fat Content` IN ('LF','low fat') THEN 'Low Fat'
WHEN `Item Fat Content`='reg' THEN 'Regular'
ELSE `Item Fat Content`
END;

select Distinct(`Item Fat Content`) from `blinkit grocery data`;

select cast(sum( `Sales`)/1000000 as decimal(10,2)) as Total_Sales_millions from `blinkit grocery data` where `Item Fat Content` ='Low Fat'; 

select cast(avg(`Sales`) as decimal (10,1)) as avg_sales from `blinkit grocery data`;
select Count(*) as no_of_items from `blinkit grocery data`;
select cast(avg(`Rating`) as decimal (10,1)) as avg_rating from `blinkit grocery data`;
select cast(sum( `Sales`)/1000000 as decimal(10,2)) as Total_Sales_millions from `blinkit grocery data` where `Outlet Establishment Year` = 2022; 
select cast(avg(`Sales`) as decimal (10,1)) as avg_sales from `blinkit grocery data` where `Outlet Establishment Year` = 2022;


select `Item Fat Content` , cast(sum(`Sales`)/1000000 as decimal (10,2)) as Total_sales,
cast(avg(`Sales`) as decimal (10,1)) as avg_sales,
count(*) as no_of_items,
cast(avg(`Rating`) as decimal (10,1)) as avg_rating
from `blinkit grocery data`
GROUP BY `Item Fat Content`
ORDER BY Total_sales Desc;
