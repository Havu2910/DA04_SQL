--Bai tap 1
select device_type,
  sum(case 
    when device_type = 'laptop' then 1
    else 0
  end) as laptop_reviews,
  sum(case 
    when device_type = 'tablet','phone' then 1
    else 0
    end) as mobile_views
from viewership
--Bai tap 2
SELECT x,y,z,
  CASE
    WHEN X+Y>Z and X+Z>Y and Y+Z>X THEN 'Yes'
    Else 'No'
End as triangle
FROM TRIANGLE
-- Bai tap 3
SELECT 
  round(sum(CASE
    when call_category is null or call_category='n/a' then 1
    else 0
  end)/count(call_category)*100,1)  as call_percentage
from callers
-- Bai tap 4
SELECT NAME FROM CUSTOMER
WHERE REFEREE_ID <> 2 OR REFEREE_ID IS NULL
-- bai tap 5
select survived,
 sum(case when pclass = 1 then 1 else 0 end) as first_class,
 sum(case when pclass = 2 then 1 else 0 end) as second_class,
 sum(case when pclass = 3 then 1 else 0 end) as third_class
from titanic 
group by survived
