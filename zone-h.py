#!/usr/bin/python
# vim: set fileencoding=\xe2
import re
from urlparse import urlparse
from pprint import pprint

print '''
######################################
#  ____                              #
# |_  /___ _ _  ___ ___| || |        #
#  / // _ \ ' \/ -_)___| __ |        #
# /___\___/_||_\___|   |_||_|        #
#  / __| |___ __ _ _ _  ___ _ _      #
# | (__| / -_) _` | ' \/ -_) '_|     #
#  \___|_\___\__,_|_||_\___|_|       #
#                                    #
#       fb.com/yassinehd.official    #
#                                    #
######################################                                               

      '''


urls = raw_input('Text File To Clean ? : ')
with open(urls, 'r') as urls:
	for line in urls:
		url = line.rstrip() and line.split('\t')

		bond = url[7].replace('...', '')
		benz = url[7].split('/')
		clean = benz[0]
		if 'http://' not in clean:
			url = 'http://'+clean
			with open('hd.txt', 'a') as myfile:
			 myfile.write('http://'+clean)
			 myfile.write('\n')
