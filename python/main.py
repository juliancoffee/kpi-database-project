"""
Database interaction
"""
import cx_Oracle

user = "LAB"
password = "LAB_PASSWD"
db = "localhost/xe"


with cx_Oracle.connect(user, password, db, encoding="UTF-8") as connection:
    cursor = connection.cursor()
    hits = cursor.execute("SELECT * FROM HITS")
    for hit in hits:
        print(hit)
    connection.commit()
