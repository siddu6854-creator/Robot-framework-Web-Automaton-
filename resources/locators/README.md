# Locator Repository and Automation Instructions

## Overview
This project uses Selenium 4 to automate web interactions and generate a robust locator repository for the Parabank demo site. All locators are stored as relative XPaths in JSON format, with keys as the element's visible text and values as their unique XPath. The script is designed for non-mobile devices and uses only Selenium 4.

## Folder Structure
- `resources/locators/` : Contains JSON locator files and screenshots.
- `single.py` : Main script to generate locators and take screenshots.

## Instructions
1. **Environment Setup**
   - Ensure you have a virtual environment named `myvenv` in your workspace.
   - Activate it before running any commands:
     ```powershell
     .\myvenv\Scripts\Activate
     ```
2. **Install Requirements**
   - Install Selenium 4 inside `myvenv`:
     ```powershell
     pip install selenium==4.*
     ```
   - Ensure ChromeDriver is available in your PATH or specify its location in `single.py`.

3. **Run the Script**
   - Execute the script to generate locators and take a screenshot:
     ```powershell
     python single.py
     ```
   - The script will:
     - Open the Parabank demo site
     - Wait 15 seconds for the page to load
     - Take a screenshot and save it in `resources/locators/parabank_home.png`
     - Extract visible elements and store their relative XPaths in `resources/locators/parabank_locators.json`

4. **Locator Strategy**
   - All XPaths are relative and point to a single, unique element.
   - Keys in the JSON are the visible text of the element.
   - Values are the corresponding XPath.

5. **Extending Locators**
   - To add more locators, update `single.py` to include additional elements and their XPaths.
   - Always use relative XPaths and ensure each points to only one element.

## Example Locator JSON
```
{
    "Customer Login": "//h2[text()='Customer Login']",
    "Username": "//input[@name='username']",
    "Password": "//input[@name='password']",
    "Log In": "//input[@value='Log In']",
    "Forgot login info?": "//a[text()='Forgot login info?']",
    "Register": "//a[text()='Register']"
}
```

## Notes
- The script is suitable for desktop browsers only.
- Do not create new folders; use only the existing structure.
- All locator files and screenshots must be stored in `resources/locators/`.
