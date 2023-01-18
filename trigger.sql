DROP TRIGGER IF EXISTS usa_state_insert ON USA_State;
DROP FUNCTION IF EXISTS upper_new_state()

CREATE OR REPLACE FUNCTION upper_new_state() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE Usa_State
          SET usa_state = upper(usa_state) 
		  WHERE Usa_state.usa_state = NEW.usa_state; 
		  RETURN NULL;
     END;
$$;

CREATE TRIGGER usa_state_insert 
AFTER INSERT ON USA_State
FOR EACH ROW EXECUTE FUNCTION upper_new_state()

INSERT INTO USA_State(zipcode, usa_state) 
VALUES(30044, 'Georgia')

SELECT * FROM USA_State
