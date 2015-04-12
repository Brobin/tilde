import urllib
import json
import socket
from terminaltables import AsciiTable
from textwrap import wrap


def get_ip():
    url = 'http://icanhazip.com'
    ip = urllib.urlopen(url).read()
    return ip


def get_lat_long(ip):
    params = '?ip=%s&position=true' % ip
    url = 'http://api.hostip.info/get_html.php%s' % params
    response = urllib.urlopen(url).read()
    parts = response.split('\n')
    latitude = parts[3][10:]
    longitude = parts[4][11:]
    return latitude, longitude


def get_weather(latitude, longitude):
    params = '?lat=%s&lon=%s&FcstType=json' % (latitude, longitude)
    url = 'http://forecast.weather.gov/MapClick.php%s' % params
    response = urllib.urlopen(url).read()
    data = json.loads(response)
    return data


def print_output(weather):
    loc = weather['location']['areaDescription']
    title = 'Forecasts for %s' % loc

    temp = weather['currentobservation']['Temp']
    cond = weather['currentobservation']['Weather']
    current = 'It is currently %s and %s in %s' % (temp, cond, loc)

    table_data = [['Day', 'Temp', 'Precip', 'Condition']]

    for x in range(0, 14):
        temp = weather['data']['temperature'][x]
        label = weather['time']['tempLabel'][x]
        temp = '%s %s' % (temp, label)
        time = weather['time']['startPeriodName'][x]
        pop = weather['data']['pop'][x]
        chance = str(pop if pop else 0) + '%'
        condition = weather['data']['weather'][x]
        table_data.append([time, temp, chance, condition])

    table = AsciiTable(table_data)
    print('\n%s\n\n%s\n%s\n' %(current, title, table.table))


def main():
    # Use the janky chain of API calls to figure out
    # where the user is from to get the weather for
    # their area
    ip = get_ip()
    latitude, longitude = get_lat_long(ip)
    weather = get_weather(latitude, longitude)
    print_output(weather)

main()
