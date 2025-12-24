-- 1. Average inflation per year
SELECT
  year,
  AVG(inflation_rate) AS avg_inflation
FROM inflation_by_region
GROUP BY year
ORDER BY year;

-- 2. Top 5 regions with highest average inflation
SELECT
  region,
  AVG(inflation_rate) AS avg_inflation
FROM inflation_by_region
GROUP BY region
ORDER BY avg_inflation DESC
LIMIT 5;

-- 3. Year-on-Year comparison
SELECT
  region,
  year,
  AVG(inflation_rate) AS avg_inflation
FROM inflation_by_region
GROUP BY region, year
ORDER BY region, year;

-- 4. Ranking regions using window function
SELECT
  year,
  region,
  AVG(inflation_rate) AS avg_inflation,
  RANK() OVER (PARTITION BY year ORDER BY AVG(inflation_rate) DESC) AS inflation_rank
FROM inflation_by_region
GROUP BY year, region;

-- 5. Detect inflation spikes
SELECT *
FROM inflation_by_region
WHERE inflation_rate > (
  SELECT AVG(inflation_rate) + 1 * STDDEV(inflation_rate)
  FROM inflation_by_region
);

