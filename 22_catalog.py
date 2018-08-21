#!/usr/bin/python
#-*- coding: utf-8 -*-

import sys
import os

def show_usage (message, code = 1):
    print message
    print "%s: source_dir dest_dir" % sys.argv[0]
    sys.exit(code)
if len (sys.argv) != 3:
    show_usage("Нужно передать 2 аргумента; вы передали %d" % (len(sys.argv)-1))
elif not os.path.isdir(sys.argv[1]):
    show_usage("Недопустимый каталог-источник")
elif not os.path.isdir(sys.argv[2]):
    show_usage("Недопустимый каталог-приемник")

source = sys.argv[1]
dest = sys.argv[2]

print "Каталогом-источником является", source
print "Каталогом-приемником является", dest