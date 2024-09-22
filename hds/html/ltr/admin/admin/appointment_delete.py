#!C:/Python312/python.exe
import cgi
import cgitb
import mysql.connector
cgitb.enable()
print("Content-type: text/html\n")

form = cgi.FieldStorage()
apt_id = form.getvalue('apt_id')

# Print the JavaScript confirmation dialog
print('''
<script>
if (confirm("Are you sure you want to delete this appointment?")) {
    // Proceed with deletion
''')

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="hds"
)

mycursor = mydb.cursor()

# Delete query for the appointment
query = f'''DELETE FROM appointment WHERE app_id={apt_id}'''

# Execute the query
mycursor.execute(query)
mydb.commit()

# Success message after deletion
print('''
    alert("Appointment Deleted Successfully..!!!");
    location.href="appointmentlist1.py";
} else {
    // Redirect to the appointment list without deleting
    location.href="appointmentlist1.py";
}
</script>
''')
