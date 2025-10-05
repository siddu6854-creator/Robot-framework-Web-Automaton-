import os
from dotenv import load_dotenv, find_dotenv

load_dotenv(find_dotenv())


# Access environment variables
APPLICATION_LOGIN_URL = os.getenv("Application_Login_URL") 
BROWSER = os.getenv("BROWSER")

