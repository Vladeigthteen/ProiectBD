from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
 
 
app = Flask(__name__)
 
 
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'user123;'
app.config['MYSQL_DB'] = 'facultate'

 
 
mysql = MySQL(app)



if mysql.connection is None:
    print("MySQL connection object is None")

print(mysql)
@app.route('/')
def index():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM studenti")
    data = cur.fetchall()
    cur.close()
    return render_template('index.html', students=data)

@app.route('/add', methods=['POST'])
def add_student():
    if request.method == 'POST':
        id = request.form['id']
        nume = request.form['nume']
        prenume = request.form['prenume']
        data_nasterii = request.form['data_nasterii']
        medie = request.form['medie']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO studenti (IdStudent, Nume, Prenume, DataNasterii, Medie) VALUES (%s, %s, %s, %s, %s)",
                    (id, nume, prenume, data_nasterii, medie))
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('index'))


@app.route('/delete/<string:id>', methods=['POST'])
def delete_student(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM studenti WHERE IdStudent = %s", (id,))
    mysql.connection.commit()
    cur.close()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)