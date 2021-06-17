import os
import re


class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY')
    # SQLAlchemy 1.4x compatibility issues
    SQLALCHEMY_DATABASE_URI = os.environ.get('HEROKU_POSTGRESQL_ROSE_URL')
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USERNAME = os.environ.get('EMAIL_USER')
    MAIL_PASSWORD = os.environ.get('EMAIL_PASS')