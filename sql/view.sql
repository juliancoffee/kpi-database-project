DROP VIEW Distributions_Info;

CREATE VIEW Distributions_Info
AS
SELECT
    Distributions.Distro_Name
  , H.Current_Hits
  , Di.Child_Id
  , Distributions.First_Release
    FROM
        Distributions
            LEFT JOIN
            Distro_Interactions Di
            ON Distributions.Distro_Id = Di.Parent_Id
            LEFT JOIN
            Hits H
            ON Distributions.Distro_Id = H.Distro_Id;

