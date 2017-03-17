import sys
import re

flag = False
for line in open(sys.argv[1], "r"):
    line = line.strip()
    if line.startswith('##contig'):
        line = re.sub('ID=chr', 'ID=', line)
    if line.startswith('chr'):
        line = re.sub('^chr', '', line)
    if line.startswith('#CHROM'):
        flag = True
    if flag:
        components = line.split()
        if components[6] == 'REJECT':
            continue
        line = "\t".join(map(str, components[0:10]))
    print line
