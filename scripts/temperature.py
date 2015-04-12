#!/usr/bin/python

import sys

def f_to_c(f):
	return 5*(int(f)-32)/9

def c_to_f(c):
	return 32 + 9*int(c)/5

if len(sys.argv) > 2:
	unit = sys.argv[1]
	number = sys.argv[2]
	if unit == "c":
		print('{0} c = {1} f'.format(number, c_to_f(number)))
	elif unit == "f":
		print("{0} f = {1} c".format( number, f_to_c(number)))
else:
	print("ERROR: unit and number argument needed i.e. \"c 0\", \"f 32\"")