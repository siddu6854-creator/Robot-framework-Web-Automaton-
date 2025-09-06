import json
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

# Setup Chrome options for non-mobile device
options = Options()
options.add_argument('--start-maximized')

# Path to chromedriver (assume it's in PATH or specify full path)
driver = webdriver.Chrome(options=options)

url = "https://parabank.parasoft.com/parabank/index.htm"
driver.get(url)
time.sleep(15)

# Take screenshot
screenshot_path = "resources/locators/parabank_home.png"
driver.save_screenshot(screenshot_path)

# Locators dictionary
locators = {}

# Example: Find elements by visible text and generate relative XPath
# Update this section with actual elements and their visible text
# For demonstration, let's get some main elements

# 1. 'Customer Login' label
login_label = driver.find_element(By.XPATH, "//h2[text()='Customer Login']")
locators["Customer Login"] = "//h2[text()='Customer Login']"

# 2. 'Username' input
username_input = driver.find_element(By.XPATH, "//input[@name='username']")
locators["Username"] = "//input[@name='username']"

# 3. 'Password' input
password_input = driver.find_element(By.XPATH, "//input[@name='password']")
locators["Password"] = "//input[@name='password']"

# 4. 'Log In' button
login_button = driver.find_element(By.XPATH, "//input[@value='Log In']")
locators["Log In"] = "//input[@value='Log In']"

# 5. 'Forgot login info?' link
forgot_link = driver.find_element(By.XPATH, "//a[text()='Forgot login info?']")
locators["Forgot login info?"] = "//a[text()='Forgot login info?']"

# 6. 'Register' link
register_link = driver.find_element(By.XPATH, "//a[text()='Register']")
locators["Register"] = "//a[text()='Register']"

# Save locators to JSON
with open("resources/locators/parabank_locators.json", "w") as f:
    json.dump(locators, f, indent=4)

driver.quit()
