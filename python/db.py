"""
Database interaction
"""
import cx_Oracle

user = "LAB"
password = "LAB_PASSWD"
db = "localhost/xe"


def selection(query: str):
    with cx_Oracle.connect(user, password, db, encoding="UTF-8") as connection:
        cursor = connection.cursor()
        res = cursor.execute(query)
        connection.commit()
        return res.fetchall()


def hits():
    query = """
        SELECT
            Distributions.Distro_Name
          , Hits.Current_Hits
            FROM
                Distributions
                    LEFT JOIN
                    Hits
                    ON Distributions.Distro_Id = Hits.Distro_Id


    """
    return selection(query)


def parent_distros():
    query = """
        SELECT
            Distributions.Distro_Name
          , Count(Distrointeractions.Child_Id) AS Interactions
            FROM
                Distrointeractions
                    JOIN
                    Distributions
                    ON Distrointeractions.Parent_Id = Distributions.Distro_Id
            GROUP BY
                Distributions.Distro_Name
    """
    return selection(query)


def releases():
    query = """
        SELECT
            EXTRACT(YEAR FROM Distributions.First_Release) AS Year
          , count(Distributions.First_Release)             AS Releases
            FROM
                Distributions
            GROUP BY
                EXTRACT(YEAR FROM Distributions.First_Release)
            ORDER BY
                Year
    """
    return selection(query)
