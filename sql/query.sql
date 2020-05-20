-- Hits per day
SELECT
    Distributions.Distro_Name
  , Hits.Current_Hits
    FROM
        Distributions
            LEFT JOIN
            Hits
            ON Distributions.Distro_Id = Hits.Distro_Id;

-- Ratio between parent distros
SELECT
    Distributions.Distro_Name
  , Count(Distrointeractions.Child_Id) AS Interactions
    FROM
        Distributions
            JOIN
            Distrointeractions
            ON Distrointeractions.Parent_Id = Distributions.Distro_Id
    GROUP BY
        Distributions.Distro_Name;

-- Count of new distributions every year
SELECT
    EXTRACT(YEAR FROM Distributions.First_Release) AS Year
  , count(Distributions.First_Release)             AS Releases
    FROM
        Distributions
    GROUP BY
        EXTRACT(YEAR FROM Distributions.First_Release)
    ORDER BY
        Year;
