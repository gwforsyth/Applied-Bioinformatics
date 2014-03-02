#This script finds the three longest gene sequences in the fasta file NC_002695 
#Import the SeqIO Biopython package
from Bio import SeqIO
#Assign the NC_002965 as the input file
input_file = "NC_002695.fasta"
#Assign longest_genes as the output file
output_file = "longest_genes.fasta"
#Open the output file so the results can be written in
output_handle = open(output_file, 'w') 
#Put all the records into a list
records = list(SeqIO.parse(input_file, 'fasta'))
#Sort the records in the list by length
records.sort(cmp = lambda x,y: cmp(len(y),len(x)))
#Now write the longest three sequences into the output file
SeqIO.write(records[0:3], output_handle, 'fasta')
#Close the output file
output_handle.close()

