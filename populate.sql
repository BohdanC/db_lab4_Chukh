-- channel
INSERT INTO channel (channel_title)
  	VALUES ('LastWeekTonight');
INSERT INTO channel (channel_title)
  	VALUES ('iJustine');
INSERT INTO channel (channel_title)
  	VALUES ('CrazyRussianHacker');
INSERT INTO channel (channel_title)
  	VALUES ('Vox');
INSERT INTO channel (channel_title)
  	VALUES ('Asata Channel');

-- category
INSERT INTO category (cat_name)
  	VALUES ('Politic');
INSERT INTO category (cat_name)
  	VALUES ('Techno');
INSERT INTO category (cat_name)
  	VALUES ('Crashtest');
INSERT INTO category (cat_name)
  	VALUES ('Discovery');
INSERT INTO category (cat_name)
  	VALUES ('Auto');

-- country
INSERT INTO country (country_name)
  	VALUES ('USA');
INSERT INTO country (country_name)
  	VALUES ('GB');
INSERT INTO country (country_name)
  	VALUES ('Russia');
INSERT INTO country (country_name)
  	VALUES ('Ukraine');
INSERT INTO country (country_name)
  	VALUES ('Chechnia');

--views_date
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('The Trump Presidency: Last Week Tonight with John Oliver (HBO)','2020-06-23', 2418783);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('2 Weeks with iPhone X','2020-07-24', 119180);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('5 Ice Cream Gadgets put to the Test','2021-01-15', 817732);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('Why the rise of the robots won’t mean the end of work','2020-10-01', 256426);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('New Lada Vesta Sw Cross','2020-06-20', 1311334);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('Breaking lada into the wall','2019-05-30', 987000);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('how processor made?','2021-11-23', 442356);
INSERT INTO views_date (title, stats_date, views)
  	VALUES ('Biden, what are u doing with us?','2018-06-23', 1311356);


-- video
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('The Trump Presidency: Last Week Tonight with John Oliver (HBO)',
			1, 1, 1);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('2 Weeks with iPhone X',
			2, 2, 2);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('5 Ice Cream Gadgets put to the Test',
			3, 3, 3);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('Why the rise of the robots won’t mean the end of work',
			4, 4, 4);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('New Lada Vesta Sw Cross',
			5, 5, 5);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('Breaking lada into the wall',
			5, 3, 5);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('how processor made?',
			3, 5, 3);
INSERT INTO video (title, channel_id, category_id, country_id)
	VALUES ('Biden, what are u doing with us?',
			1, 1, 1);


