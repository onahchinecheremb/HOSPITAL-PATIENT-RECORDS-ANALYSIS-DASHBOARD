use mmachukwu
go
select * from "hospital patient record analysis"
1--How many patient was treated in the hospital?
select count(*) as total_patients from "hospital patient record analysis"
2--What is the average age of patients?
select AVG(age) as average_age from "hospital patient record analysis"
3--What is the gender distribution of patients?
select gender, count(*) as total_Patients from "hospital patient record analysis"
group by gender
4--Which medical conditions are most common among patients?
select condition, count(*) as patient_count from "hospital patient record analysis"
group by condition
order by patient_count desc
5--What are the top ten(10) most common medical conditions?
select top 10 [condition], count(*) as patient_count from "hospital patient record analysis"
group by [condition]
order by patient_count desc 
6--Which medical condition generated the highest billing amount or total cost?
select [condition], sum(cost) as total_billing from "hospital patient record analysis"
group by [condition]
order by total_billing desc
7--Which procedure generated the highest revenue?
select [procedure], sum(cost) as total_revenue from "hospital patient record analysis"
group by [procedure]
order by total_revenue desc
8--Which procedures are most expensive on average?
select [procedure], avg(cost) as average_cost from "hospital patient record analysis"
group by [procedure] 
order by average_cost desc
9--Which medical conditions have the highest readmission rates?
select [condition], count(*) as readmission_count from "hospital patient record analysis"
where readmission = 1
group by [condition]
order by readmission_count desc
10--What is the average hospital stay length?
select avg(length_of_stay) as average_stay from "hospital patient record analysis"
11--Which medical conditons have the longest average hospital stay?
select condition,avg(length_of_stay) as average_stay from "hospital patient record analysis"
group by condition
order by average_stay desc
12--What percentage of patients were readmitted?
select readmission,count(*) as total_patients from "hospital patient record analysis"
group by readmission
13--What are the treatment outcomes of patients?
select outcome, count(*) as total_patients from "hospital patient record analysis"
group by outcome
14--Which medical conditions have the highest recovery rates?
select condition, count(*) as recovered_patients from "hospital patient record analysis"
Where outcome='recovered'
group by condition
order by recovered_patients desc
15--What is the average patient satisfaction score?
select avg(satisfaction) as average_satisfaction from "hospital patient record analysis"
16--Which medical conditions have highest patient satisfaction?
select condition, avg(satisfaction) as avg_satisfaction from "hospital patient record analysis"
group by condition
order by avg_satisfaction desc
17--Which medical conditions have lowest patient satisfaction?
select condition, avg(satisfaction) as avg_satisfaction from "hospital patient record analysis"
group by condition
order by avg_satisfaction asc
18--Do male and female patients incur different treatment costs?
select gender, avg(cost) as average_cost from "hospital patient record analysis"
group by gender
19--Which patients incurred unusually high medical costs?
select * from "hospital patient record analysis"
where cost > (select avg(cost) + (2 * stdev(Cost)) from "hospital patient record analysis")
20--Does longer hospital stay affect patient satisfaction?
select length_of_stay, avg(satisfaction) as avg_satisfaction from "hospital patient record analysis"
group by length_of_stay
order by length_of_stay






