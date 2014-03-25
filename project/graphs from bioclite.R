rld<-rlogTransformation(dds)
vsd<-varianceStabilizingTransformation(dds)
rlogMat<-assay(rld)
vstMat<-assay(vsd)

#plotting the standardd deviation of the transformed data against the mean using the shifted logarithm transformation, the regularized log transformation and the vairance stablizing transformation 
library("vsn")
png(file="meanSdpot.png")
par(mfrow=c(1,3))
notAllZero<-(rowSums(counts(dds))>0)
meanSdPlot(log2(counts(dds,normalized=TRUE)[notAllZero,]+1),ylim=c(0,2.5))
meanSdPlot(assay(rld[notAllZero,]),ylim=c(0,2.5))
meanSdPlot(assay(vsd[notAllZero,]),ylim=c(0,2.5))
dev.off()

#heamap of the count table

library("RColorBrewer")
library("gplots")
select<-order(rowMeans(counts(dds, normalized=TRUE)),decreasing=TRUE)[1:30]
hmcol<-colorRampPalette(brewer.pal(9, "Purples"))(100)
png(file="rawcounts.png")
heatmap.2(counts(dds,normalized=TRUE)[select,], col=hmcol, 
          Rowv=FALSE, Colv=FALSE, scale="none", 
          dendrogram="none", trace="none", margin=c(10,6))
dev.off()

png(file="regularized log transformations.png")
heatmap.2(assay(rld)[select,], col=hmcol, 
          Rowv=FALSE, Colv=FALSE, scale="none", 
          dendrogram="none", trace="none", margin=c(10,6))
dev.off()

png(file="cariance stablising transformations")
heatmap.2(assay(vsd)[select,], col=hmcol, 
          Rowv=FALSE, Colv=FALSE, scale="none", 
          dendrogram="none", trace="none", margin=c(10,6))
dev.off()

#heatmap of the sample-to-samples distances
distsRL<-dist(t(assay(rld)))
mat<-as.matrix(distsRL)
rownames(mat)<-colnames(mat) <- with(colData(dds),paste(treatments, sep=" : "))
png(file="heatmap2.png")
heatmap.2(mat, trace="none", col=rev(hmcol), margin=c(13,13))
dev.off()

#Principal component plot
png(file="principal_component_plot.png")
print(plotPCA(rld, intgroup=c("treatments")))
dev.off()

