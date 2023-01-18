--Вивести перший в таблиці випадок з введеним типом порушення

DROP PROCEDURE IF EXISTS get_sev(varchar(50));

CREATE OR REPLACE PROCEDURE get_sev(sevs varchar(50))
LANGUAGE 'plpgsql'
AS $$
DECLARE acc_id accident.accident_id%TYPE;
DECLARE sev accident.severity%TYPE;

BEGIN
    SELECT accident_id, severity into acc_id, sev FROM accident WHERE severity = sevs;
    RAISE INFO 'Accident: %,  has severity: %', TRIM(acc_id), TRIM(sev);
END;
$$;

CALL get_sev('Speeding');
