DROP FUNCTION IF EXISTS get_accident(sev_acc char(50)); 

CREATE OR REPLACE FUNCTION get_accident(sev varchar(50)) 
    RETURNS TABLE (accident_id varchar,  severity varchar)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT accident.accident_id::varchar, accident.severity::varchar
      FROM accident
      WHERE accident.severity = sev;
END;
$$;

SELECT * FROM get_accident('DUI');
