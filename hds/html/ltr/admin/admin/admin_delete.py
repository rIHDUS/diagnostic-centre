#!C:/Python312/python.exe
import cgi
import cgitb
import mysql.connector
cgitb.enable()
print("Content-type: text/html\n")
form=cgi.FieldStorage()
#print(form)
adm_id=form.getvalue('adm_id')


mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="hds"
)

mycursor=mydb.cursor()

query=f'''DELETE FROM register WHERE id={adm_id}'''
#print(query)

mycursor.execute(query)
mydb.commit()

print(f'''
<script>alert("!!! Admin Delete Successfully !!!");
    location.href="adminlist.py";
</script>''')