#Script to extract important data from multiple alignment output files.

infile=open('ig_pairs.out')

init=infile.readline()

while init[:6] !='     I':

	init=infile.readline()

colnames=['I', 'J', 'ILEN', 'JLEN', 'MATCH', 'NGAPS', 'NALIG', 'NIDENT', '%IDENT', 'NAS', 'NASAL', 'NRANS', 'RMEAN', 'STEDEV', 'SCORE', 'NUMBER']

filename='ig_parsed.txt'

file=open(filename, 'w')

for c in colnames:
        file.write(c + '\t')

for line in infile.readlines():
	try:
		if line[:2]==' T':
			continue

		I=line[1:6]
		J=line[7:11]
		ILEN=line[12:16]
		JLEN=line[17:21]
 		MATCH=line[22:31]
		NGAPS=line[32:38]
 		NALIG=line[39:45]
		NIDENT=line[46:52]
		IDEN=line[53:62]
		NAS=line[63:72]
		NASAL=line[73:82]
		NRANS=line[83:89]
		RMEAN=line[90:99]
		STDEV=line[100:109]
		SCORE=line[110:119]
		NUMBER=line[120:126]
	
		file.write('\n' + I + '\t' + J + '\t' + ILEN + '\t' + JLEN + '\t' + MATCH + '\t' + NGAPS + '\t' + NALIG + '\t' + NIDENT + '\t' + IDEN + '\t' + NAS + '\t' + NASAL + '\t' + NRANS + '\t' + RMEAN + '\t' + STDEV + '\t' + SCORE + '\t' + NUMBER)
 	except:
		pass
file.close()

