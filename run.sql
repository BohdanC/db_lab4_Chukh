-- FUNCTION
CREATE OR REPLACE FUNCTION video_title_finder(ttl text) RETURNS TEXT AS
$$
  DECLARE
    rez integer;
  BEGIN
    SELECT COUNT(*) INTO rez
    FROM video
    INNER JOIN views_date ON video.title = views_date.title
    WHERE views_date.title = ttl;
    
    IF rez >= 1 THEN
	  	Return 'Video with such title was found';
	else
		return 'Video was not found';
	END IF;
  END;
$$ LANGUAGE 'plpgsql';

SELECT * FROM video_title_finder('New Lada Vesta Sw Cross')


-- PROCEDURE

CREATE OR REPLACE PROCEDURE channel_from_country(cntry text)
LANGUAGE plpgsql AS
$$
  DECLARE
    chan record;
  BEGIN
    FOR chan IN
      SELECT channel.channel_title
      FROM channel
      INNER JOIN country ON channel.channel_id = country.country_id
      WHERE country.country_name = cntry
    LOOP
      RAISE INFO 'Channel title is %', chan.channel_title;
    END LOOP;
  END;
$$

CALL channel_from_country('Russia')


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
 
insert into views_date(title,stats_date,views)
	values('tinki-winki','2020-05-05',477233)
	returning *;
 
select * from views_date
