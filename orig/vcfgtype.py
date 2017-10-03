#!/usr/bin/python
import sys
for line in sys.stdin:
    if line[0] == '#':
        continue
    line = line.split("\t")

    # loop over genotypes
    for gtype in line[9:]:
        gtype = gtype.split(":")
        print gtype[0]
