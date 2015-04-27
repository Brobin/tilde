import requests
import json
import sys


def get_code(search, first):
    codes = []
    status = 'https://raw.githubusercontent.com/citricsquid/httpstatus.es/master/codes/{0}.json'.format(first)
    data = requests.get(status).json()
    try:
        print(data['codes'][str(int(search))]['summary'])
        print(search)
    except KeyError:
        pass

try:
    requests.packages.urllib3.disable_warnings()
    search = sys.argv[1]
    first = int(str(search)[0])
    get_code(search, first)
except KeyError:
    print('provide an http error code, yo!')
except Exception as e:
    print(e)
    print('Something went way wrong dude')
