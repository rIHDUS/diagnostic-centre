#!C:/Python312/python.exe

import cgi
import cgitb
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
cgitb.enable()
print("Content-type: text/html\n\n")

form = cgi.FieldStorage()

to_email = form.getvalue("email")
subject = "Appointment Confirmation"
message_body = form.getvalue("amess")

def send_customized_email(to_email, subject, message_body):
    sender_email = "sudhirsarpata@gmail.com"
    sender_password = "CSK1110182123"
    smtp_server = "smtp.gmail.com"
    smtp_port = 587

    try:
        message = MIMEMultipart()
        message['From'] = sender_email
        message['To'] = to_email
        message['Subject'] = subject
        
        message.attach(MIMEText(message_body, 'plain'))

        session = smtplib.SMTP(smtp_server, smtp_port)
        session.starttls()
        session.login(sender_email, sender_password)
        text = message.as_string()
        session.sendmail(sender_email, to_email, text)
        session.quit()

        print(f"Email successfully sent to {to_email} with the subject: {subject}")
    except Exception as e:
        print(f"Error sending email: {str(e)}")

if to_email and subject and message_body:
    send_customized_email(to_email, subject, message_body)
else:
    print("Error: Please provide an email address, subject, and message.")
