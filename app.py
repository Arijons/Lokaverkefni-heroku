# þurfum að setja pymysql upp í pyCharm (sama rútína og bottle-beaker)
import pymysql
from bottle import route, request, template, run, static_file

@route('/')
def index():
    return "<pre><a href='/nyskra'>Nýskrá</a>  <a href='/innskra'>Innskrá</a></pre>"

@route('/nyskra')
def nyr():
    return template('signup_form.tpl')

@route('/donyskra', method='POST')
def donyr():
    u = request.forms.get('user')
    p = request.forms.get('pass')
    n = request.forms.get('name')
    



    # Connection object, búum til tengingu við gagnagrunn
    conn = pymysql.connect(host='eu-cdbr-west-02.cleardb.net',database='heroku_b22cba0b4af10fe',user='b6b4e521ba80a5', password='faae03d5')
    # Cursor object, used to manage the context of a fetch operatio
    cur = conn.cursor()

    # Srepare and execute a database operation (query or command).
    # SQL fyrirspurn, sækjum notanda úr db
    cur.execute("SELECT count(*) FROM user_tafla where user=%s",(u))
    # Fetch the next row of a query result set, returning a single sequence, or None when no more data is available.
    result = cur.fetchone() #fáum tuple (runa eða listi af read-only objectum)

    print(result)

    # notandi er ekki til
    if result[0] == 0:
        cur.execute("INSERT INTO user_tafla Values(%s,%s,%s)", (u, p, n))
        # Commit any pending transaction to the database.
        conn.commit()
        cur.close() # stundum sleppt, conn.close() lokar einnig cur.
        # lokum db tengingu
        conn.close()
        return u, " hefur verið skráður <br><a href='/'>Heim</a>"
    else:
        return u, " er frátekið notendanafn, reyndu aftur <br><a href='/nyskra'>Nýskrá</a>"


@route('/innskra')
def inn():
    return template('inskra_form.tpl')

@route('/doinnskra', method='POST')
def doinn():
    u = request.forms.get('user')
    p = request.forms.get('pass')


    conn = pymysql.connect(host='eu-cdbr-west-02.cleardb.net',database='heroku_b22cba0b4af10fe',user='b6b4e521ba80a5', password='faae03d5')
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM user_tafla where user=%s and pass=%s",(u,p))
    result = cur.fetchone()#fáum tuple
    print(result)
    # er u og p til í  db?
    if result[0] == 1:
        cur.execute("SELECT name FROM user_tafla where user=%s and pass=%s",(u,p))
        name=cur.fetchone()
        cur.close()
        conn.close()
        print(name)
        return template('leynisida_form.tpl',nafn=name)
    else:
        return template('ekkileynisida_form.tpl')


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static/')

run()