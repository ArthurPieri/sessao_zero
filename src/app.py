"""This is the main entry point of the application. It is responsible for
creating the Flask application and configuring it. It also registers the
blueprints for the different parts of the application."""

from flask import Flask

app = Flask(__name__)
