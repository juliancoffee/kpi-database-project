-- Hits per day
SELECT
    Distributions.distro_id
    , Hits.current_hits
FROM
    Distributions
        LEFT JOIN
    Hits
        ON Distributions.distro_id = Hits.distro_id;

-- Ratio between parent distros
SELECT Distribution.distro_name, COUNT(parent_id)
FROM 
    DistroInteractions 
        JOIN 
    Distributions
        ON DistroInteractions.parent_id = Distributions.distro_id
GROUP BY Distributions.distro_id

-- All hits since year to current
SELECT 
    SUM(per_year)
    , SUM(per_6month)
    , SUM(per_3month)
    , SUM(per_4weeks)
    , SUM(per_week)
    , SUM(current_hits)
FROM Hits
