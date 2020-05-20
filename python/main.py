#!/usr/bin/env python
"""
Database interaction
"""
import os

import cx_Oracle
import chart_studio

from charts import show, plot_hits, plot_parents, plot_releases

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


hits_info = hits()
parent_info = parent_distros()
releases_info = releases()

print(f"{hits_info=}", f"{parent_info=}", f"{releases_info=}", sep='\n\n')

API_KEY = os.getenv("CHART_STUDIO_KEY")
chart_studio.tools.set_credentials_file(
    username="juliancoffee",
    api_key=API_KEY
)

form = "show"
show(plot_hits(), 'distro_hits', form=form)
show(plot_parents(), 'distro_parents', form=form)
show(plot_releases(), 'distro_releases', form=form)
