from bottle import route, run, template
import datetime

data = {}


@route('/')
def index():
    return template('home', data=data.items())


@route('/ip-update/<name>/<ip>')
def index(name, ip):
    data[name] = [ip, datetime.datetime.now()]
    return "SUCCESS"


run(host='localhost', port=3000)