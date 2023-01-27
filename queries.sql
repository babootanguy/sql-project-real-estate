
--SHOW THE TOP COUNTRIES THAT HAVE RIELTORS ACCORDING TO THEIR NUMBER
SELECT country, COUNT (rieltor.id) AS "num of rieltors for country"
FROM location INNER JOIN rieltor
ON location.id = rieltor.location_id
GROUP BY country
ORDER BY COUNT(rieltor.id) DESC;

--SHOW THE TOP OF ALL RIELTORS ACCORDING TO RATE
SELECT name, surname, AVG(rate) as "average rate"
FROM rieltor LEFT JOIN review 
ON rieltor.id = review.rieltor_id
GROUP BY rieltor.id
ORDER BY AVG(rate) DESC NULLS LAST;

--SHOW THE AGENCIES WITH THEIR LOCATION
SELECT country, city, agency.name
FROM location INNER JOIN agency
ON location.id = agency.location_id;

--SHOW THE TOTAL OF MONEY EARNED FROM SELLS IN 2020
SELECT SUM(amount) 
FROM bill INNER JOIN contract
ON contract.id = bill.contract_id
WHERE type = 'Sell' AND DATE_PART('year', date) = 2020;

--CREATE FUNCTION TO CALCULATE REVENUE FOR SERVICE FROM RENT CONTRACTS
CREATE FUNCTION calculate_revenue()
   RETURNS INT
   LANGUAGE plpgsql
   AS 
   $$
      DECLARE
	     revenue INT := 0;
		 revenue_percentage NUMERIC(3,2) := 0.15;
		 a INT;
	  BEGIN
	     FOR a IN 
		    SELECT amount 
			FROM bill INNER JOIN contract 
			ON contract.id = bill.contract_id
			WHERE type = 'Rent'
		 LOOP
		    revenue := revenue + a * revenue_percentage;
		 END LOOP;
		 RETURN revenue;
	  END
   $$

SELECT calculate_revenue();

--CREATE FUNCTION TO CALCULATE SALARY FOR RIELTOR
CREATE FUNCTION calculate_salary(input_email text)
   RETURNS INT
   LANGUAGE plpgsql
   AS
   $$
      DECLARE 
	     salary INT := 0;
		 profit_percentage NUMERIC(3,2);
		 a RECORD;
	  BEGIN
	     FOR a IN 
		    SELECT amount, type 
			FROM bill 
			INNER JOIN contract ON contract.id = bill.contract_id
			INNER JOIN rieltor ON rieltor.id = contract.rieltor_id
			WHERE email = input_email
		 LOOP
		    IF a.type = 'Rent' THEN profit_percentage := 0.35;
			ELSEIF a.type = 'Sell' THEN profit_percentage := 0.07;
			END IF;
			
			salary := salary + a.amount * profit_percentage;
			
		 END LOOP;
		 RETURN salary;
	   END
	$$

SELECT calculate_salary('koraguz@mail.ru');

--SHOWING IN WHICH LOCATIONS DEALS WERE MADE AND BY WHO
SELECT CONCAT(country, ', ', city) AS location, 
CONCAT (name, ' ', surname) AS "full name", contract.id
FROM location 
INNER JOIN rieltor ON location.id = rieltor.location_id
INNER JOIN contract ON rieltor.id = contract.rieltor_id
ORDER BY location;

			
			
		    




