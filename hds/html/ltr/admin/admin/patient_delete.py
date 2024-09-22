#!C:/Python312/python.exe
import cgi
import cgitb
import mysql.connector
cgitb.enable()
print("Content-type: text/html\n")
form=cgi.FieldStorage()
pat_id=form.getvalue('pat_id')

print('''
<script>
if (confirm("Are you sure you want to delete this record?")) {
    // Proceed with deletion
''')

mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="hds"
)

mycursor=mydb.cursor()

query=f'''DELETE FROM patient WHERE id={pat_id}'''

mycursor.execute(query)
mydb.commit()

print('''
    alert("!!! Patient Record Delete Successfully !!!");
    location.href="patientlist.py";
} else {
    // Redirect to the patient list without deleting
    location.href="patientlist.py";
}
</script>
''')
