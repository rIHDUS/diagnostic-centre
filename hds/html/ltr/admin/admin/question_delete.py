#!C:/Python312/python.exe
import cgi
import cgitb
import mysql.connector
cgitb.enable()
print("Content-type: text/html\n")
form=cgi.FieldStorage()
#print(form)
que_id=form.getvalue('que_id')


mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="hds"
)

mycursor=mydb.cursor()

query=f'''DELETE FROM question WHERE id={que_id}'''
#print(query)

mycursor.execute(query)
mydb.commit()

print(f'''
<script>alert("!!! Question Delete Successfully !!!");
    location.href="questionlist.py";
</script>''')