import os

class Config:
    SECRET_KEY = os.getenv('SECRET_KEY', 'default_secret_key')
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL', 'postgresql+psycopg2://postgres:AdminStagAv24@34.170.230.4:5432/postgres')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
