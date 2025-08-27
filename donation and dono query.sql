select* from donation_data;

select * from donor_data2;
SELECT *
from Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id;

SELECT sum(donation)
FROM Donation_Data;

SELECT COUNT(donation)
FROM Donation_Data;

SELECT COUNT(email)
from Donation_Data;

SELECT max(donation)
FROM Donation_Data;

SELECT min(donation)
FROM Donation_Data;

SELECT Donation_Data.state, Donation_Data.job_field, Donation_Data.donation, Donation_Data.gender, Donor_Data2.university
from Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = donor_data2.id;

SELECT Donation_Data.state, Donation_Data.job_field, Donation_Data.donation, Donation_Data.gender, Donor_Data2.university
from Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
group by state;



SELECT Donation_Data.state, Donation_Data.job_field, MAX(Donation_Data.donation), Donation_Data.gender, Donor_Data2.university 
FROM Donation_Data 
JOIN Donor_Data2 ON Donation_Data.id = Donor_Data2.id 
GROUP BY Donation_Data.state, Donation_Data.job_field, Donation_Data.gender, Donor_Data2.university 
ORDER BY max(donation) DESC 
LIMIT 0, 50000;

SELECT first_name, gender, job_field, state, donation
FROM Donation_Data
ORDER BY donation DESC
LIMIT 10;

SELECT 
    Donor_Data2.donation_frequency, 
    SUM(Donation_Data.donation) AS total_donations
FROM 
    Donation_Data 
JOIN 
    Donor_Data2 
ON 
    Donation_Data.id = Donor_Data2.id 
WHERE 
    Donor_Data2.donation_frequency = 'Weekly' 
GROUP BY 
    Donor_Data2.donation_frequency;

SELECT 
    Donor_Data2.donation_frequency, 
    SUM(Donation_Data.donation) AS total_donations
FROM 
    Donation_Data 
JOIN 
    Donor_Data2 
ON 
    Donation_Data.id = Donor_Data2.id 
WHERE 
    Donor_Data2.donation_frequency = 'Monthly'
GROUP BY 
    Donor_Data2.donation_frequency;

SELECT 
    Donor_Data2.donation_frequency, 
    SUM(Donation_Data.donation) AS total_donations
FROM 
    Donation_Data 
JOIN 
    Donor_Data2 
ON 
    Donation_Data.id = Donor_Data2.id 
WHERE 
    Donor_Data2.donation_frequency = 'Yearly'
GROUP BY 
    Donor_Data2.donation_frequency;
