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
