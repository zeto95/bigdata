--"question 1"
create table minipurchase
{ 
Date date;
Time time;
Item Varchar(100);
category VARCHAR(100);
sales (decimal);
Payment VARCHAR(100);
}

update minipurchase
set Payment = REPLACE(LTRIM(RTRIM(Payment)), '  ', ' ')
where Payment like '%  %'


update minipurchase
set Category = REPLACE(LTRIM(RTRIM(Category)), '  ', ' ')
where Category like '%  %'

update minipurchase
set Sales = REPLACE(LTRIM(RTRIM(Sales)), '  ', ' ')
where Sales like '%  %'


--"question 1"
select Payment as key , sum(sales) as Value 
from minipurchase 
group by Payment , sales 

--"question 2"
select category  , sum(sales) as sales 
from minipurchase 
group by category , sales 

--"question 3"
select category  , count(Payment) as Total_number
from minipurchase 
group by category , count_category 

--"question 4"
DECLARE @MessageText NVARCHAR(100);
SET @MessageText = N'Tuple must have 6 elements, check number of elements';
RAISERROR(
    @MessageText, 
    16, 
    1, 
    N'4' 
);

--"question 5"
select category  , count(Payment) as Total_number
from minipurchase 
where category IN ('Computers','Cameras','Video Games')
group by category , Total_number 

--"question 6"
select category  , count(Payment) as Total_number
from minipurchase 
group by category , Total_number 
having Total_number > 114 


--"question 7"
select category  , AVG(Sales) as Average_sales
from minipurchase 
group by category , Average_sales 









