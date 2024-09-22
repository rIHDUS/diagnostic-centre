#!C:/Python312/python.exe

import cgi
import time
from selenium import webdriver
from selenium.webdriver.common.by import By

print("Content-type: text/html\n\n")

form = cgi.FieldStorage()

to_whatsapp = form.getvalue("contact")
message_body = form.getvalue("amess")

def send_whatsapp_message(to_whatsapp, message_body):
    try:
        driver = webdriver.Chrome()
        driver.get("https://web.whatsapp.com/")

        input("Scan the QR code and press Enter when ready...")

        search_box = driver.find_element(By.XPATH, "//div[@role='textbox'][@data-tab='3']")
        search_box.send_keys(to_whatsapp)
        time.sleep(2)

        user = driver.find_element(By.XPATH, f"//span[@title='{to_whatsapp}']")
        user.click()
        time.sleep(1)

        message_box = driver.find_element(By.XPATH, "//div[@role='textbox'][@data-tab='6']")
        message_box.send_keys(message_body)
        message_box.send_keys("\n")

        time.sleep(2)
    except Exception as e:
        print(f"An error occurred: {e}")
    finally:
        driver.quit()

if to_whatsapp and message_body:
    send_whatsapp_message(to_whatsapp, message_body)
else:
    print("Error: Please provide a phone number and message.")
