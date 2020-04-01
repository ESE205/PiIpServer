from bottle import route, run, template
import datetime

data = {}


@route('/')
def index():
    temp = "<div><div>ESE 205 IPs</div><ul>"
    for key, value in data.items():
        temp += f"<li><b>{key}</b> at {value[1]}: {value[0]} </li>"
    temp += "</ul></div>"
    return temp


@route('/ip-update/<name>/<ip>')
def index(name, ip):
    data[name] = [ip, datetime.datetime.now()]
    return "SUCCESS"


run(host='localhost', port=3000)