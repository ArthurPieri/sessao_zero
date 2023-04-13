"""This is the main entry point of the application. It is responsible for
creating the Flask application and configuring it. It also registers the
blueprints for the different parts of the application."""

from flask import Flask
from src import execute_sql, execute_script

app = Flask(__name__)

FILES_LIST = [
    "./db/sql/create_tables/1_create_guild.sql",
    "./db/sql/create_tables/2_create_player.sql",
    "./db/sql/create_tables/3_create_character.sql",
    "./db/sql/create_tables/4_create_campaign.sql",
    "./db/sql/create_tables/5_create_session.sql",
    "./db/sql/create_tables/6_create_note.sql",
]


@app.route("/")
def create_database():
    """Create the database"""
    for file in FILES_LIST:
        execute_sql("database.db", file)

    execute_script("database.db", "./db/sql/create_tables/7_add_fks.sql")

    return "Hello World!"
