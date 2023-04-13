"""
Database manipulation functions
"""

import sqlite3


def execute_sql(db_name: str, sql_file_address: str):
    """
    execute sql query
    """
    try:
        conn = sqlite3.connect(db_name)

        with open(sql_file_address, "r", encoding="UTF-8") as file:
            sql = file.read()

        print(sql)

        conn.execute(sql)

        conn.commit()

        conn.close()
    except Exception as exc:
        conn.close()
        raise exc


def execute_script(db_name: str, sql_file_address: str):
    """
    execute sql script
    """
    try:
        conn = sqlite3.connect(db_name)

        with open(sql_file_address, "r", encoding="UTF-8") as file:
            sql = file.read()

        conn.executescript(sql)

        conn.commit()

        conn.close()
    except Exception as exc:
        conn.close()
        raise exc


def insert(insertion: dict):
    """
    insert data
    """
    print(insertion)


def find_one():
    """
    find one data
    """
