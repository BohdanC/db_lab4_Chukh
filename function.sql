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
