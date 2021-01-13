#!/usr/bin/env python3

from bottle import route, run, template
import datetime
import sys
import argparse

parser = argparse.ArgumentParser(description='Server to advetise IP Addresses for ESE205')
parser.add_argument('--pwd', help='password for the server')
# creates a flag instead of an argument
parser.add_argument('--debug', action='store_true', help='specifies whether the server should perform verbose logging')
args = parser.parse_args()

if args.pwd is None:
    print('The server expects a password, pass it with the "--pwd" flag')
    sys.exit(1)


months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

data = {}

@route('/')
def index():
    return template('home', data=data.items())


@route(f'/ip-update/{args.pwd}/<name>/<ip>')
def index(name, ip):
    curr_time = datetime.datetime.now()
    time = f'{curr_time.hour}:{curr_time.minute}'
    day = f'{months[curr_time.month]} {curr_time.day}, {curr_time.year}'
    data[name] = [ip, time, day]
    return "SUCCESS"


run(host='0.0.0.0', port=3000, quiet=not args.debug)