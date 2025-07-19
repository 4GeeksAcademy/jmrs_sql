-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------


SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

SELECT * FROM observations
LIMIT 10;

SELECT DISTINCT region_id FROM observations;

SELECT COUNT(DISTINCT species_id) AS especies_distintas FROM observations;

SELECT COUNT(*) AS total_observaciones
FROM observations
WHERE region_id = 2;
SELECT COUNT(*) AS total_observaciones

SELECT COUNT(*) AS total_observaciones
FROM observations
WHERE date = '1998-08-08';

SELECT region_id, COUNT(*) AS total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC;

SELECT species_id, COUNT(*) AS total_records
FROM observations
GROUP BY species_id
ORDER BY total_records DESC
LIMIT 5;

SELECT observer, COUNT(*) AS total
FROM observations
GROUP BY observer
ORDER BY total DESC;

SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC;

SELECT observations.id, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;

UPDATE species
SET scientific_name = 'Panthera onca'
WHERE scientific_name = 'Panthera oncca';