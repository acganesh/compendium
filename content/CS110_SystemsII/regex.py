import sys
import re

inp = sys.stdin.read()

print "\n"*10

print re.sub('\n\s*\}', ' }', inp.replace('  ',' ')).replace('\n\n','\n')
