#!/usr/bin/env python3

from bottle import route, run, template
import datetime

months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

data = {}

@route('/')
def index():
    return template('home', data=data.items())


@route('/ip-update/<name>/<ip>')
def index(name, ip):
    curr_time = datetime.datetime.now()
    time = f'{curr_time.hour}:{curr_time.minute}'
    day = f'{months[curr_time.month]} {curr_time.day}, {curr_time.year}'
    data[name] = [ip, time, day]
    return "SUCCESS"


run(host='0.0.0.0', port=3000)