#!/usr/bin/python
#assign the infile to signal.txt
infile="signal.txt"
#read in the sequnces
dataset=open(infile)
#create a data array
data=[]
#read in the dataset into the data array: one floating point value per line
for line in dataset.readlines():
	line=line.strip()
	for number in line.split():
		data.append(float(number))
dataset.close()
#chose a buffersize; from trial and error it was found 60 was the optimum
buffersize=60
#create a buffer array
buffer=[] 
buffertotal=0 
position=0 
result=[]
#fill in the buffer array, then calculate the moving average, followed by the running average
while len(buffer)<buffersize:
	buffer.append(data[position])
	buffertotal=buffertotal+data[position]
	position=position+1
	result.append(float(buffertotal)/buffersize)
for v in range(position, len(data)):
	buffertotal=buffertotal-buffer[v%buffersize]
	buffer[v%buffersize]=data[v]
	buffertotal=buffertotal+buffer[v%buffersize]
	result.append(float(buffertotal)/buffersize)
print result

#open a new file called smoothed.txt 
smooth=open('smoothed.txt', 'w')
#write in the results from the ring buffer 
for r in result:
        smooth.write("%s\n" % r)
smooth.close()


