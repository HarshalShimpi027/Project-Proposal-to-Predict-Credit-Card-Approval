# Q1.Group the customers based on their income type? and find the average of their annual income.?
select * from credit_card;
Select Distinct Type_Income, avg(Annual_income) AS Average_Income 
from credit_card group by Type_Income;

#Q2.Find the female owners of cars and property?
Select * from credit_card
Where Gender = 'F' and Car_Owner = 'Y' and Propert_Owner = 'Y' 

#Q3.Find the male customers who are staying with their families?
Select * from credit_card
Where Gender = 'M' and Marital_status = 'Married' and Family_Members > 1;

#Q4.Please list the top five people having the highest income?
Select * from credit_card
order by Annual_income desc
limit 5;

#Q5.How many married couple are having bad credit ?
Select * from credit_card_label;
Select count(*) as num_married_couples_bad_credit from credit_card c
Join credit_card_label cl on c.Ind_ID = cl.Ind_ID
where Marital_status = 'Married' and label = '1';

#Q6. What is the highest education level and  what is the total count ? 
Select Distinct EDUCATION, count(*) as Total_count 
from credit_card group by EDUCATION
order by Total_count desc
limit 1;

#Q7.Between married males and females, who is having more bad credit ?
Select GENDER, count(*) as Total_count from credit_card c
Join credit_card_label cl on c.Ind_ID = cl.Ind_ID
where Marital_status = 'Married' and label = '1'
group by GENDER
order by Total_count desc
limit 1;

