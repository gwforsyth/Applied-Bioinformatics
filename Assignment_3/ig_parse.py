
#!/usr/bin/python
import re


infile = 'ig_pairs.out'
# set the input file as ig_pairs.out
fh = open(infile)
# set fh to be the opened input file

line = fh.readline()
# set line to read each line of the input file.
#index = []
#identifier = []
#mydict = {}
# set up arrays for index and identifiers, and a dictionary for mydict
#for line in fh:
#        regexp=r'(\d+) +>([^/]+)/'
#        m=re.search(regexp,line)
#        if m:
#             	group1 = m.group(1)
#                group2 = m.group(2)
#
#                index.append(group1)
#                identifier.append(group2)
#                mydict = {'index':index, 'identifier':identifier}
#the for loop creates a dictionary for the index and identifier

while line[:6] !='     I':
# set up command to split the data from the table into seperate columns
	line=fh.readline()

colnames=['I', 'J', 'ILEN', 'JLEN', 'MATCH', 'NGAPS', 'NALIG', 'NIDENT', '%IDENT', 'NAS', 'NASAL', 'NRANS', 'RMEAN', 'STEDEV', 'SCORE', 'NUMBER']
# set the columnnames
outfile='ig_pairs_parsed.txt'
handle = open(outfile, 'w')
# create the output file and open it


for c in colnames:
        handle.write(c + '\t')
# write the columns into the output file
for line in fh.readlines():
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
		RMEAN=line[88:99]
		STDEV=line[100:109]
		SCORE=line[110:120]
		
	
		handle.write('\n' + I + '\t' + J + '\t' + ILEN + '\t' + JLEN + '\t' + MATCH + '\t' + NGAPS + '\t' + NALIG + '\t' + NIDENT + '\t' + IDEN + '\t' + NAS + '\t' + NASAL + '\t' + NRANS + '\t' + RMEAN + '\t' + STDEV + '\t' + SCORE)
 	except:
		pass
#creates an exception do that the data from each column is put into the correct column
handle.close()
fh.close()
#close the opened files
# the script worked when creating the dictionary or splitting the datatable, not for both.