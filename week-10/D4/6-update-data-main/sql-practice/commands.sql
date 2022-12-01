-- bonus

UPDATE friends
  SET first_name = null
  WHERE id = 5;

-- doesn't work, not null in seed-data.sql

-- try

UPDATE friends
  SET first_name = ''
  WHERE id = 5;
