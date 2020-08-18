CREATE TABLE lead (

"id" integer,
"borough" text,
"zipcode" integer,
"dateC" text,
"dateR" text,
"lead1" real,
"lead2" real,
"lead3" real,
"copper1" real,
"copper2" real,
"copper3" real );

.separator ,
.import Lead_At_The_Tap_Results.csv lead

UPDATE lead
SET lead1 = lead1 + 0.0 ;

UPDATE lead
SET lead2 = lead2 + 0.0 ;

UPDATE lead
SET lead3 = lead3 + 0.0 ;

UPDATE lead
SET copper1 = copper1 + 0.0 ;

UPDATE lead
SET copper2 = copper2 + 0.0 ;

UPDATE lead
SET copper3 = copper3 + 0.0 ;

DELETE
 FROM lead
 WHERE borough = "NEW YORK"
 OR borough = "New York";

DELETE
 FROM lead
 WHERE borough = "NEW HYDE PARK";

UPDATE lead
 SET borough = "Manhattan"
 WHERE borough = "MANHATTAN";

UPDATE lead
 SET borough = "Bronx"
 WHERE borough = "BRONX";

UPDATE lead
 SET borough = "Staten Island"
 WHERE borough = "STATEN ISLAND"
 OR borough = "StatenIsland";

UPDATE lead
 SET borough = "Brooklyn"
 WHERE borough = "BROOKLYN";

UPDATE lead
 SET borough = "Queens"
 WHERE borough != "Manhattan"
 AND borough != "Brooklyn"
 AND borough != "Staten Island"
 AND borough != "Bronx";

SELECT COUNT (*)
FROM lead;

SELECT borough, lead1, zipcode
FROM lead
ORDER BY lead1 DESC
LIMIT 10;

SELECT borough, lead1, copper1
 FROM lead
 WHERE lead1 > 0.01
 AND copper1 > 0.05
 ORDER BY borough
 LIMIT 10;

SELECT borough, AVG(lead1)
 FROM lead
 GROUP BY borough;

SELECT borough, lead1, lead3, (lead1 - lead3) as difference
 FROM lead
 GROUP BY difference
 HAVING difference != lead1
 ORDER BY difference DESC
 LIMIT 20;

SELECT  ("The highest concentration of lead in the tap water was recorded in " || borough || " on " || dateC || " as " || max(lead1) || " mg/L ")
 FROM lead
 GROUP BY borough
 ORDER BY max(lead1);

SELECT borough, zipcode, copper1
 FROM lead
 ORDER BY copper1 DESC
 LIMIT 1;

SELECT AVG(abs(copper1 - copper3)) 
 FROM lead;

SELECT COUNT(copper1)
 FROM lead
 WHERE copper1 = 0;
          
SELECT COUNT(copper2)
 FROM lead
 WHERE copper2 = 0;
         
SELECT COUNT(copper3)
 FROM lead
 WHERE copper3 = 0;
          
SELECT borough, zipcode
 FROM lead
 WHERE copper1 = 0
 ORDER BY borough;

SELECT total_changes()
 FROM lead
 LIMIT 1;

