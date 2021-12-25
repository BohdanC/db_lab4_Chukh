-- TRIGGER

CREATE OR REPLACE FUNCTION k_maker() RETURNS trigger AS
$$
  DECLARE
  
  BEGIN
  	RAISE NOTICE 'NEW:%',NEW;
	NEW.views := (NEW.views / 1000) * 1000;
	return NEW;
	
  END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER views_k_maker
 BEFORE INSERT ON views_date
 FOR EACH ROW EXECUTE FUNCTION k_maker();
