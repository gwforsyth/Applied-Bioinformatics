#install.packages("ape")
#install.packages("phangorn")
#install.packages("picante")
install.packages("phytools")
#load packages
require(ape)
require(phangorn)
require(picante)
require(phytools)

#Read in data
x<-read.dna("aligned.fasta", format="fasta")

#compare the number of substitutions separating any given pair of seqeunces
d<-dist.dna(x)
#output the matrus to a file for  posterity
write.table(as.matrix(d),"distances.csv")

#construct a tree using the data and the distance matrix (d)
tr.upgma<-upgma(d)
tr.nj<-nj(d)
tr.bionj<-bionj(d)
tr.fastme<-fastme.bal(d,nni=T,spr=T,tbr=T)

#plot the trees
plot(tr.upgma, main="upgma", cex=0.5)
plot(tr.nj, main="nj", cex=0.5)
plot(tr.bionj, main="bionj", cex=0.5)
plot(tr.fastme, main="fastme", cex=0.5)

tr.upgmar<-root(tr.upgma, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")
tr.njr<-root(tr.nj, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563" )
tr.bionjr<-root(tr.bionj, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")
tr.fastmer<-root(tr.fastme, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")

plot(tr.upgmar,main="upgmar", cex=0.5);nodelabels(,cex=0.3, frame="circle", bg="yellow"); 
plot(tr.njr,main="njr", cex=0.5);nodelabels(, cex=0.3, frame="circle", bg="blue");
plot(tr.bionjr,main="bionjr", cex=0.5);nodelabels(, cex=0.3, frame="circle", bg="green");
plot(tr.fastmer, main="fastmer", cex=0.5);nodelabels(,cex=0.3, frame="circle", bg="red");

#fit the data using pml
fit<-pml(tr.bionj,as.phyDat(x))
#optimise, plot and set a random seed for the bootstrap process
fit=optim.pml(fit,T)
plot(fit, cex=0.3, main="fitted tree using default")
set.seed(8)
##bootstrap the data tree
bs<-bootstrap.pml(fit,bs=100,optNni=T)
#plot the fitted results
treeBS<-plotBS(fit$tree,type="p", bs, cex=0.2, main="bootstapped fitted tree")

#substitution models

mt<-modelTest(as.phyDat(x),G=F, I=F)

#evolutionary distinctiveness
orig<-evol.distinct(tr.upgmar, type="fair.proportion")
orig
#plot histogram
plot(orig, col=" blue", border=" blue", main="Ed score", density=100)