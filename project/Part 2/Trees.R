#install.packages("ape")
#install.packages("phangorn")
#install.packages("picante")
#install.packages("phytools")
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
plot(tr.upgma, main="upgma", type="fan", cex=1)
plot(tr.nj, main="nj", type="fan", cex=1)
plot(tr.bionj, main="bionj",type="fan", cex=1)
plot(tr.fastme, main="fastme",type="fan", cex=1)

tr.upgmar<-root(tr.upgma, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")
tr.njr<-root(tr.nj, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563" )
tr.bionjr<-root(tr.bionj, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")
tr.fastmer<-root(tr.fastme, outgroup="chromosome:Galgal4:21:1386860:1412422:1/1-25563")

plot(tr.upgmar,main="upgmar", cex=0.5);nodelabels(,cex=0.3, frame="circle", bg="yellow"); 
plot(tr.njr,main="njr", cex=0.5);nodelabels(, cex=0.3, frame="circle", bg="blue");
plot(tr.bionjr,main="bionjr", cex=0.5);nodelabels(, cex=0.3, frame="circle", bg="green");
plot(tr.fastmer, main="fastmer", cex=0.5);nodelabels(,cex=0.3, frame="circle", bg="red");

#fit the data using pml
fit<-pml(tr.fastme,as.phyDat(x))
#optimise, plot and set a random seed for the bootstrap process
fit=optim.pml(fit,T)
set.seed(8)
##bootstrap the data tree
bs<-bootstrap.pml(fit,bs=100,optNni=T)
#plot the fitted results
treeBS<-plotBS(fit$tree,type="p", bs, cex=1, main="bootstapped fitted tree")

par(mfrow=c(2,2))
#substitution models
dt.upgma<-cophenetic(tr.upgma)
#pull out the taxa data from (d) as a matrix and place it in a data.frames called (dmat)
dmat<-as.matrix(d)
#pull out the rownames of dmat and place it in a value called (nms)
nms<-rownames(dmat)
#update cophenetic analysis with the rownames
dt.upgma<-dt.upgma[nms,nms]
#calculate the distances 
dt.upgma<-as.dist(dt.upgma)
#plot the new distances with the original distances subtracted to get the residuals
plot(dt.upgma-d,ylab="residuals",ylim=c(-0.4,0.4), cex=0.5,main="UPGMA")
abline(h=0,lty=3)


dt.nj<-cophenetic(tr.nj)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.nj<-dt.nj[nms,nms]
dt.nj<-as.dist(dt.nj)
plot(dt.nj-d,ylab="residuals",ylim=c(-0.4,0.4), cex=0.5,main="neighbour-joining")
abline(h=0,lty=3)

dt.bionj<-cophenetic(tr.bionj)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.bionj<-dt.bionj[nms,nms]
dt.bionj<-as.dist(dt.bionj)
plot(dt.bionj-d,ylab="residuals",ylim=c(-0.4,0.4),cex=0.5,main="bionj")
abline(h=0,lty=3)

dt.fastme<-cophenetic(tr.fastme)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.fastme<-dt.fastme[nms,nms]
dt.fastme<-as.dist(dt.fastme)
plot(dt.fastme-d,ylab="residuals",ylim=c(-0.4,0.4), cex=0.5,main="fastme")
abline(h=0,lty=3)
mt<-modelTest(as.phyDat(x),G=F, I=F)

#evolutionary distinctiveness
orig<-evol.distinct(tr.upgmar, type="fair.proportion")
orig
#plot histogram
plot(orig, col=" blue", border=" blue", main="Ed score", density=100)