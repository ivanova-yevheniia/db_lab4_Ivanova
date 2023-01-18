--procedure
CALL get_sev('Speeding');

--function
SELECT * FROM Accident
SELECT * FROM get_accident('DUI');

--trigger
INSERT INTO USA_State(zipcode, usa_state) 
VALUES(30349, 'Georgia'),
	  (34953, 'Florida'),
	  (02360, 'Massachusetts')

SELECT * FROM USA_State
