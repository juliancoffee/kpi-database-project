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
            D.Distro_Name
          , D.Current_Hits
          FROM Distributions_Info D
    """
    return selection(query)


def parent_distros():
    query = """
        SELECT
            D.Distro_Name
          , Count(D.Child_Id) AS Interactions
          FROM Distributions_Info D
            GROUP BY
                D.Distro_Name
    """
    return selection(query)


def releases():
    query = """
        SELECT
            EXTRACT(YEAR FROM D.First_Release) AS Year
          , count(D.First_Release)             AS Releases
            FROM
                Distributions_Info D
            GROUP BY
                EXTRACT(YEAR FROM D.First_Release)
            ORDER BY
                Year
    """
    return selection(query)
