create database music_analysis;
use music_analysis;

 -- Que1. Who is the senior most employee based on job title?
select * from employee
order by levels desc
limit 1;

create database music_analysis;
use music_analysis;

-- Que2. Which Countries have the most invoices?
select count(*) as c, billing_country 
from invoice
group by billing_country 
order by c desc;

-- Que3. What are top 3 values of thotal invoices?

select total from invoice
order by total desc
limit 3;

-- Que4. Which city has the best customers? We would like to throw a promoting Music Festival in the city we made the most money. Write a query that returns one city that has highest sum of invoice totals Return both the city name & Sum of the invoice totals

select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc;

-- Que5. Return all the track names that have a song length longer than the average song length.
-- Return the Name and milliseconds for each trcak. Order by the song length with the longest songs listed first.

select name, milliseconds
from track
where milliseconds > (
     select avg(milliseconds)  as avg_track_length
     from track)
order by milliseconds desc;      







