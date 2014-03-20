#install.packages("ape")
#install.packages("phangorn")
#install.packages("picante")

require(ape)
require(phangorn)
require(picante)

x<-read.dna("dolphin.fasta", format="fasta")
rownames(x)<-(1:100)
d<-dist.dna(x)
write.table(as.matrix(d),"distances.csv")
d2<-dist.dna(x, model="GG95")
write.table(as.matrix(d2),"distances2.csv")

tr.upgma<-upgma(d)
tr.nj<-nj(d)
tr.bionj<-bionj(d)
tr.fastme<-fastme.bal(d,nni=T,spr=T,tbr=T)

plot(tr.upgma, main="upgma")
plot(tr.nj, main="nj")
plot(tr.bionj, main="bionj")
plot(tr.fastme, main="fastme")

plot(tr.upgma);nodelabels();tiplabels();edgelabels()
plot(tr.upgma);nodelabels();add.scale.bar(length=0.001)
plot(tr.upgma);nodelabels();axisPhylo(side=1)

tr.upgmar<-root(tr.upgma, outgroup="1")
tr.njr<-root(tr.nj, outgroup="1")
tr.bionjr<-root(tr.bionj, outgroup="1")
tr.fastmer<-root(tr.fastme, outgroup="1")

plot(tr.upgmar);nodelabels();add.scale.bar(length=0.001)
plot(tr.njr);nodelabels();add.scale.bar(length=0.001)
plot(tr.bionjr);nodelabels();add.scale.bar(length=0.001)
plot(tr.fastmer);nodelabels();add.scale.bar(length=0.001)
                                          
dt.upgma<-cophenetic(tr.upgma)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.upgma<-dt.upgma[nms,nms]
dt.upgma<-as.dist(dt.upgma)
plot(dt.upgma-d,ylab="residuals", cex=0.5,main="UPGMA")
abline(h=0,lty=3)

dt.nj<-cophenetic(tr.nj)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.nj<-dt.nj[nms,nms]
dt.nj<-as.dist(dt.nj)
plot(dt.nj-d,ylab="residuals", cex=0.5,main="neighbour-joining")
abline(h=0,lty=3)

dt.bionj<-cophenetic(tr.bionj)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.bionj<-dt.bionj[nms,nms]
dt.bionj<-as.dist(dt.bionj)
plot(dt.bionj-d,ylab="residuals", cex=0.5,main="bionj")
abline(h=0,lty=3)

dt.fastme<-cophenetic(tr.fastme)
dmat<-as.matrix(d)
nms<-rownames(dmat)
dt.fastme<-dt.fastme[nms,nms]
dt.fastme<-as.dist(dt.fastme)
plot(dt.fastme-d,ylab="residuals", cex=0.5,main="fastme")
abline(h=0,lty=3)

fit<-pml(tr.upgma,as.phyDat(x))
fit=optim.pml(fit,T)
plot(fit)
set.seed(8)
bs<-bootstrap.pml(fit,bs=100,optNni=T)
treeBS<-plotBS(fit$tree,type="fan",bs)

mt<-modelTest(as.phyDat(x),G=F, I=F)

