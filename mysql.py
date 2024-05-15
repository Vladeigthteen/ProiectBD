from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL



app=Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '2003'
app.config['MYSQL_DB'] = 'CRV'

mysql=MySQL(app)


@app.route('/')
def Home():
   
    return render_template('frontend.html')

@app.route('/Stock')
def stock():
    cur=mysql.connection.cursor()
    result=cur.execute("SELECT * FROM Lista_stoc")
    if result > 0:
        fetchdata = cur.fetchall()
        print(fetchdata)
        return render_template('Stock.html', data=fetchdata)
    else:
        return "No data found"  # Or handle it however you'd like
    cur.close()

@app.route('/add_stock', methods=['POST'])
def adaugare_stock():
    if request.method == 'POST':
        brand = request.form['brand']
        model = request.form['model']
        an_fabr = request.form['an_fabr']
        combustibil = request.form['combustibil']
        putere = request.form['putere']
        caroserie = request.form['caroserie']
        km = request.form['km']
        pret = request.form['pret']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)",
                    (brand, model, an_fabr, combustibil,putere,caroserie,km,pret))
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('stock'))


@app.route('/Stare')
def stare():
    return render_template('StareMasini.html')

@app.route('/Proprietari')
def Proprietari():
    return render_template('Propietari.html')

@app.route('/MasiniVandute')
def Vandute():
    return render_template('MasiniVandute.html')

@app.route('/Agenti')
def Agenti():
    return render_template('Agenti.html')

@app.route('/Testate')
def Testate():
    return render_template('MasiniTestate.html')


if __name__ == "__main__":
    app.run(debug=True)