#!C:/Python312/python.exe
import cgi
import cgitb
import header
import mysql.connector
cgitb.enable()
print(header.homehtml)
print("Content-type: text/html\n")
form = cgi.FieldStorage()

# Database connection
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="hds"
)

mycursor = mydb.cursor(dictionary=True)

# Constants
RECORDS_PER_PAGE = 10

# Get the current page number and search query from the form data
current_page = int(form.getvalue('page', 1))
search_query = form.getvalue('search', '')

# SQL query for search functionality across all attributes
query = f"SELECT * FROM register"
if search_query:
    query += f" WHERE name LIKE '%{search_query}%' OR email LIKE '%{search_query}%' OR password LIKE '%{search_query}%'"

# Get total number of records
mycursor.execute(query)
total_records = len(mycursor.fetchall())

# Calculate the starting point for the current page
start = (current_page - 1) * RECORDS_PER_PAGE

# Fetch only the required records for the current page
query += f" LIMIT {start}, {RECORDS_PER_PAGE}"
mycursor.execute(query)
myresult = mycursor.fetchall()

# Generate the table rows for the fetched records
tr_html = ''
for x in myresult:
    tr_html += f'''
        <tr>
            <td>
                <a href="admin_edit.py?adm_id={x['id']}"><button class="btn btn-success">EDIT</button></a>
                <a href="admin_delete.py?adm_id={x['id']}"><button class="btn btn-danger">DELETE</button></a>
            </td>
            <td>{x['id']}</td>
            <td>{x['name']}</td>
            <td>{x['email']}</td>
            <td>{x['password']}</td>
        </tr>
    '''

# Pagination controls
total_pages = (total_records + RECORDS_PER_PAGE - 1) // RECORDS_PER_PAGE
pagination_html = ''
if current_page > 1:
    pagination_html += f'<a href="?page={current_page-1}&search={search_query}"><button class="btn btn-primary" style="background-color:#2962ff">Previous</button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
if current_page < total_pages:
    pagination_html += f'<a href="?page={current_page+1}&search={search_query}"><button class="btn btn-primary" style="background-color:#2962ff">Next</button></a>'

# Search form and table display
print(f'''
<div class="page-wrapper">
    <h2 class="page-title" style="text-align:center;">Admin List</h2>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body"><br>
                        <form method="get">
                            <input type="text" name="search" placeholder="Search..." value="{search_query}" style="width:300px;margin-left:800px">
                            <input type="submit" value="Search" class="btn btn-primary" style="background-color:#2962ff">
                        </form>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr style="background-color:powderblue;"><br>
                                        <th>Action</th>
                                        <th scope="col">Sr. No.</th>
                                        <th scope="col">Admin Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Password</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {tr_html}
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align:center;"><br>
                            {pagination_html}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer text-center">All Rights Reserved by <a href="https://wolfox.in">Wolfox Services Pvt.Ltd.</a></footer>
</div>
<script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../../assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../../dist/js/app.min.js"></script>
<script src="../../dist/js/app.init.js"></script>
<script src="../../dist/js/app-style-switcher.js"></script>
<script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
<script src="../../dist/js/waves.js"></script>
<script src="../../dist/js/sidebarmenu.js"></script>
<script src="../../dist/js/custom.min.js"></script>  
</body>
</html>
''')