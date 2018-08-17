#!/usr/bin/python

import sys

a = sys.argv[1]

if a "1":
    print 'а равно одному'
    print 'Это все еще ветвь then оператора if.'
else:
    print 'а равно', a
    print 'Это все еще ветвь else оператора if.'
    
print 'А это уже за границей оператора if.'