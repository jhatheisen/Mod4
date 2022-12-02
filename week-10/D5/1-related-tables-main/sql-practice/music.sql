-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS musicians_instruments;
DROP TABLE IF EXISTS musicians;
DROP TABLE IF EXISTS bands;
DROP TABLE IF EXISTS instruments;

CREATE TABLE bands (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100)
);

CREATE TABLE instruments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type VARCHAR(100) NOT NULL
);

CREATE TABLE musicians (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  band_id INTEGER,
  FOREIGN KEY (band_id) REFERENCES bands(id)
);

CREATE TABLE musicians_instruments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  musician_id INTEGER NOT NULL REFERENCES musicians(id),
  instrument_id INTEGER NOT NULL REFERENCES instruments(id)
);

INSERT INTO bands (name)
VALUES
  ('test band');

INSERT INTO musicians (first_name, last_name, band_id)
VALUES
  ('test', 'musician', 1);

SELECT * FROM musicians;

INSERT INTO instruments (type)
VALUES
  ('violin');

INSERT INTO musicians_instruments (musician_id, instrument_id)
VALUES
  (1, 1);

SELECT * FROM musicians_instruments;
