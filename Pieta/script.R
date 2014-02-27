    barplot.ProbeSet                        html  
    bg.adjust                               html  
    bgc                                     html  
    cdfFromBioC                             html  
    cdfenv.example                          html  
    cleancdfname                            html  
    debug.affy123                           html  
    expresso                                html  
    expressoWidget                          html  
    fit.li.wong                             html  
    generateExprSet-methods                 html  
    generateExprVal-methods                 html  
    generateExprVal.method.avgdiff          html  
    generateExprVal.method.playerout        html  
    hlog                                    html  
    justrma                                 html  
    list.celfiles                           html  
    loess.normalize                         html  
    maffy.normalise                         html  
    maffy.subset                            html  
    mas5                                    html  
    mas5calls                               html  
    merge.AffyBatch                         html  
    multiloess                              html  
    mva.pairs                               html  
    normalize-methods                       html  
    normalize.constant                      html  
    normalize.contrast                      html  
    normalize.invariantset                  html  
    normalize.loess                         html  
    normalize.qspline                       html  
    normalize.quantiles                     html  
    normalize.quantiles.robust              html  
    pairs.AffyBatch                         html  
    plot.ProbeSet                           html  
    plot.density                            html  
    plotLocation                            html  
    pmcorrect                               html  
    ppsetApply                              html  
    probeMatch-methods                      html  
    probeNames-methods                      html  
    read.affybatch                          html  
    read.probematrix                        html  
    rma                                     html  
    setAffyOptions                          html  
    simplemultiLoess                        html  
    summary                                 html  
    tukey.biweight                          html  
    whatcdf                                 html  
    xy2indices                              html  
** building package indices
** installing vignettes
** testing if installed package can be loaded
* DONE (affy)

The downloaded source packages are in
	'/tmp/Rtmpv21Gwh/downloaded_packages'
Warning message:
installed directory not writable, cannot update packages 'lattice', 'plyr' 
> affy
Error: object 'affy' not found
> load(affy)
Error in load(affy) : object 'affy' not found
> load("aff")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'aff', probable reason 'No such file or directory'
> load("affy")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'affy', probable reason 'No such file or directory'
> library("affy")
Loading required package: BiocGenerics
Loading required package: parallel

Attaching package: 'BiocGenerics'

The following objects are masked from 'package:parallel':

    clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    clusterExport, clusterMap, parApply, parCapply, parLapply,
    parLapplyLB, parRapply, parSapply, parSapplyLB

The following object is masked from 'package:stats':

    xtabs

The following objects are masked from 'package:base':

    anyDuplicated, append, as.data.frame, as.vector, cbind, colnames,
    duplicated, eval, evalq, Filter, Find, get, intersect, is.unsorted,
    lapply, Map, mapply, match, mget, order, paste, pmax, pmax.int,
    pmin, pmin.int, Position, rank, rbind, Reduce, rep.int, rownames,
    sapply, setdiff, sort, table, tapply, union, unique, unlist

Loading required package: Biobase
Welcome to Bioconductor

    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
    'citation("Biobase")', and for packages 'citation("pkgname")'.

> help(Read affy)
Error: unexpected symbol in "help(Read affy"
> help(ReadAffy)
> vignette("affy") 
> vignette("affy")
> browseVignettes()
starting httpd help server ... done
> library(GEOquery)
Setting options('download.file.method.GEOquery'='curl')
> libfrary(affy)
Error: could not find function "libfrary"
> library(affy)
> library(hgu133plus2.db)
Loading required package: AnnotationDbi
Loading required package: org.Hs.eg.db
Loading required package: DBI


> download.file.method.GEOquery'='curl'
Error: unexpected string constant in "download.file.method.GEOquery'='"
> library(download.file.method.GEOquery'='curl')
Error: unexpected string constant in "library(download.file.method.GEOquery'='"
> library(GEOquery'download.file.method.GEOquery'='curl')
Error: unexpected string constant in "library(GEOquery'download.file.method.GEOquery'"
> 'download.file.method.GEOquery'='curl' 
> library(annotate)
> getGEOSuppFiles("GSE20986")
[1] "ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE20nnn/GSE20986/suppl/"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 53.7M  100 53.7M    0     0  5965k      0  0:00:09  0:00:09 --:--:-- 10.3M
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
105   740  105   740    0     0    288      0  0:00:02  0:00:02 --:--:--     0
> workingDir="MicroArray"  
> dir.create(workingDir)
> untar("~/GSE20986/GSE20986_RAW.tar", exdir=workingDir, tar="/usr/bin/tar")
Error in file(con, "rb") : cannot open the connection
In addition: Warning message:
In file(con, "rb") :
  cannot open file '/homes/gwforsyth/GSE20986/GSE20986_RAW.tar': No such file or directory
> untar("~/GSE20986/GSE20986_RAW.tar", exdir=workingDir, tar="/bin/tar")
Error in file(con, "rb") : cannot open the connection
In addition: Warning message:
In file(con, "rb") :
  cannot open file '/homes/gwforsyth/GSE20986/GSE20986_RAW.tar': No such file or directory
> untar("~/GSE20986/GSE20986_RAW.tar", exdir=workingDir, tar="/bin/tar")
Error in file(con, "rb") : cannot open the connection
In addition: Warning message:
In file(con, "rb") :
  cannot open file '/homes/gwforsyth/GSE20986/GSE20986_RAW.tar': No such file or directory
> untar("/GSE20986/GSE20986_RAW.tar", exdir=workingDir, tar="/bin/tar")
Error in file(con, "rb") : cannot open the connection
In addition: Warning message:
In file(con, "rb") :
  cannot open file '/GSE20986/GSE20986_RAW.tar': No such file or directory
> untar("GSE20986/GSE20986_RAW.tar", exdir=workingDir, tar="/bin/tar")
> cels<- list.files(workingDir, pattern = "[gz]")
> sappy(paste(workingDir, cels, sep="/"), gunzip)
Error: could not find function "sappy"
> sapply(paste(workingDir, cels, sep="/"), gunzip)
MicroArray/GSM524662.CEL.gz MicroArray/GSM524663.CEL.gz 
                   13555726                    13555055 
MicroArray/GSM524664.CEL.gz MicroArray/GSM524665.CEL.gz 
                   13555639                    13560122 
MicroArray/GSM524666.CEL.gz MicroArray/GSM524667.CEL.gz 
                   13555663                    13557614 
MicroArray/GSM524668.CEL.gz MicroArray/GSM524669.CEL.gz 
                   13556090                    13560054 
MicroArray/GSM524670.CEL.gz MicroArray/GSM524671.CEL.gz 
                   13555971                    13554926 
MicroArray/GSM524672.CEL.gz MicroArray/GSM524673.CEL.gz 
                   13555042                    13555290 
> filenames <- x ("MicroArray/GSM524662.CEL.gz MicroArray/GSM524663.CEL.gz 
+                    13555726                    13555055 
+ MicroArray/GSM524664.CEL.gz MicroArray/GSM524665.CEL.gz 
+                    13555639                    13560122 
+ MicroArray/GSM524666.CEL.gz MicroArray/GSM524667.CEL.gz 
+                    13555663                    13557614 
+ MicroArray/GSM524668.CEL.gz MicroArray/GSM524669.CEL.gz 
+                    13556090                    13560054 
+ MicroArray/GSM524670.CEL.gz MicroArray/GSM524671.CEL.gz 
+                    13555971                    13554926 
+ MicroArray/GSM524672.CEL.gz MicroArray/GSM524673.CEL.gz 
+                                                         
+ 
+ ;
+ 
> filenames <- x ("GSM524662.CEL", "GSM524663.CEL", "GSM524664.CEL", "GSM524665.CEL", "GSM524666.CEL", "GSM524667.CEL", "GSM524668.CEL", "GSM524669.CEL","GSM524670.CEL","GSM524671.CEL","GSM524672.CEL","GSM524673.CEL")
Error: could not find function "x"
> filenames <- c("GSM524662.CEL", "GSM524663.CEL", "GSM524664.CEL", "GSM524665.CEL", "GSM524666.CEL", "GSM524667.CEL", "GSM524668.CEL", "GSM524669.CEL","GSM524670.CEL","GSM524671.CEL","GSM524672.CEL","GSM524673.CEL")
> filenames <- c("GSM524662", "GSM524663", "GSM524664", "GSM524665", "GSM524666", "GSM524667", "GSM524668", "GSM524669","GSM524670","GSM524671","GSM524672","GSM524673")
> targets<- c("iris", "retina", "retina", "iris", "retina", "iris", "choroid", "choriod", "choriod", "huvec", "huvec", "huvec")
> phenodata<-as.data.frame(cbind(filenames,samplenames,targets))
Error in as.data.frame(cbind(filenames, samplenames, targets)) : 
  error in evaluating the argument 'x' in selecting a method for function 'as.data.frame': Error in eval(expr, envir, enclos) : object 'samplenames' not found
> filenames <- c("GSM524662.CEL", "GSM524663.CEL", "GSM524664.CEL", "GSM524665.CEL", "GSM524666.CEL", "GSM524667.CEL", "GSM524668.CEL", "GSM524669.CEL","GSM524670.CEL","GSM524671.CEL","GSM524672.CEL","GSM524673.CEL")
> samplesnames <- c("GSM524662", "GSM524663", "GSM524664", "GSM524665", "GSM524666", "GSM524667", "GSM524668", "GSM524669","GSM524670","GSM524671","GSM524672","GSM524673")
> samplenames
Error: object 'samplenames' not found
> samplenames <- c("GSM524662", "GSM524663", "GSM524664", "GSM524665", "GSM524666", "GSM524667", "GSM524668", "GSM524669","GSM524670","GSM524671","GSM524672","GSM524673")
> samplenames
 [1] "GSM524662" "GSM524663" "GSM524664" "GSM524665" "GSM524666" "GSM524667"
 [7] "GSM524668" "GSM524669" "GSM524670" "GSM524671" "GSM524672" "GSM524673"
> filenames
 [1] "GSM524662.CEL" "GSM524663.CEL" "GSM524664.CEL" "GSM524665.CEL"
 [5] "GSM524666.CEL" "GSM524667.CEL" "GSM524668.CEL" "GSM524669.CEL"
 [9] "GSM524670.CEL" "GSM524671.CEL" "GSM524672.CEL" "GSM524673.CEL"
> phenodata<-as.data.frame(cbind(filenames,samplenames,targets))> celfiles<- ReadAffy(phenoData=phenodata, path=workingDir)
Error: file names must be specified using a character vector, not a 'list'
> celfiles<- ReadAffy(phenoData=phenodata, cellfile.path=workingDir)
Error: file names must be specified using a character vector, not a 'list'
> celfiles<- ReadAffy(phenoData=phenodata, celfile.path=workingDir)
> celfiles

AffyBatch object
size of arrays=1164x1164 features (23 kb)
cdf=HG-U133_Plus_2 (54675 affyids)
number of samples=12
number of genes=54675
annotation=hgu133plus2
notes=
> head(exprs(cellfiles))
Error in head(exprs(cellfiles)) : 
  error in evaluating the argument 'x' in selecting a method for function 'head': Error in exprs(cellfiles) : 
  error in evaluating the argument 'object' in selecting a method for function 'exprs': Error: object 'cellfiles' not found
> head(exprs(celfiles))
  GSM524662.CEL GSM524663.CEL GSM524664.CEL GSM524665.CEL GSM524666.CEL
1            67           110            83            58            81
2         11835         12382         13641          8984         14521
3            87           134           119            74            94
4         12199         12731         13762          9928         14816
5            52            66            54            46            89
6            64            90            86            38            78
  GSM524667.CEL GSM524668.CEL GSM524669.CEL GSM524670.CEL GSM524671.CEL
1            61            56            50            64           106
2         10840         14401         13408         13640         13277
3            73           143            97           115           138
4         11134         14505         13316         13375         13530
5            49            47            50            67            52
6            52            75            57            45            80
  GSM524672.CEL GSM524673.CEL
1            99            78
2         12344         16459
3           140           108
4         12553         17324
5            62            77
6            55            79
> boxplot(celfiles)
> eset<- expresso(Dilution, normalize.method="qspline", bgcorrect.mthod-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(Dilution, normalize.method = "qspline", bgcorrect.mthod -  : 
  object 'Dilution' not found
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.mthod-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.mthod -  : 
  object 'bgcorrect.mthod' not found
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.method -  : 
  object 'bgcorrect.method' not found
> Data <-ReadAffy    
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.method -  : 
  object 'bgcorrect.method' not found
> ReadAffy
function (..., filenames = character(0), widget = getOption("BioC")$affy$use.widgets, 
    compress = getOption("BioC")$affy$compress.cel, celfile.path = NULL, 
    sampleNames = NULL, phenoData = NULL, description = NULL, 
    notes = "", rm.mask = FALSE, rm.outliers = FALSE, rm.extra = FALSE, 
    verbose = FALSE, sd = FALSE, cdfname = NULL) 
{
    l <- AllButCelsForReadAffy(..., filenames = filenames, widget = widget, 
        celfile.path = celfile.path, sampleNames = sampleNames, 
        phenoData = phenoData, description = description)
    ret <- read.affybatch(filenames = l$filenames, phenoData = l$phenoData, 
        description = l$description, notes = notes, compress = compress, 
        rm.mask = rm.mask, rm.outliers = rm.outliers, rm.extra = rm.extra, 
        verbose = verbose, sd = sd, cdfname = cdfname)
    sampleNames(ret) <- l$sampleNames
    return(ret)
}
<environment: namespace:affy>
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.method -  : 
  object 'bgcorrect.method' not found
> library(affydata"
+ )
+ library(affydata" 
Error: unexpected string constant in:
")
library(affydata""
> library(affydata) 
     Package    LibPath                Item       Title                        
[1,] "affydata" "/usr/lib64/R/library" "Dilution" "AffyBatch instance Dilution"
> eset<- expresso(Dilution, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(Dilution, normalize.method = "qspline", bgcorrect.method -  : 
  object 'Dilution' not found
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.method -  : 
  object 'bgcorrect.method' not found
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method-"rma", pmcorrect.method="pmonly", summary.method="liwong")
Error in expresso(celfiles, normalize.method = "qspline", bgcorrect.method -  : 
  object 'bgcorrect.method' not found
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method="rma", pmcorrect.method="pmonly", summary.method="liwong")
background correction: rma 
normalization: qspline 
PM/MM correction : pmonly 
expression values: liwong 
background correcting...done.
normalizing...[1] "samples= 1209 k= 5 first= 999"
[1] "sampling(array= 1 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 1 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 1 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 1 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 1 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 2 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 2 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 2 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 2 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 2 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 3 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 3 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 3 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 3 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 3 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 4 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 4 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 4 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 4 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 4 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 5 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 5 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 5 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 5 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 5 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 6 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 6 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 6 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 6 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 6 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 7 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 7 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 7 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 7 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 7 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 8 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 8 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 8 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 8 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 8 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 9 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 9 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 9 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 9 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 9 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 10 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 10 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 10 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 10 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 10 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 11 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 11 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 11 iter= 3 off= 599 -200 599 -200 )"
q[1] "sampling(array= 11 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 11 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 12 iter= 1 off= 999 0 999 0 )"
d[1] "sampling(array= 12 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 12 iter= 3 off= 599 -200 599 -200 )"
^C[1] "sampling(array= 12 iter= 4 off= 399 -200 399 -200 )"

> 
Save workspace image? [y/n/c]: c
> celfiles.rma = rma(celfiles)
Background correcting
Normalizing
Calculating Expression
> celfiles.rma 
ExpressionSet (storageMode: lockedEnvironment)
assayData: 54675 features, 12 samples 
  element names: exprs 
protocolData
  sampleNames: GSM524662.CEL GSM524663.CEL ... GSM524673.CEL (12 total)
  varLabels: ScanDate
  varMetadata: labelDescription
phenoData
  sampleNames: GSM524662.CEL GSM524663.CEL ... GSM524673.CEL (12 total)
  varLabels: filenames samplenames targets
  varMetadata: labelDescription
featureData: none
experimentData: use 'experimentData(object)'
Annotation: hgu133plus2 
> boxplot(celfiles.rma)                                                        
Error in sort.int(x, na.last = na.last, decreasing = decreasing, ...) : 
  'x' must be atomic
In addition: Warning messages:
1: In is.na(x) : is.na() applied to non-(list or vector) of type 'S4'
2: In is.na(x) : is.na() applied to non-(list or vector) of type 'S4'
> boxplot(celfiles.rma)
Error in sort.int(x, na.last = na.last, decreasing = decreasing, ...) : 
  'x' must be atomic
In addition: Warning messages:
1: In is.na(x) : is.na() applied to non-(list or vector) of type 'S4'
2: In is.na(x) : is.na() applied to non-(list or vector) of type 'S4'
> boxplot(exprs(celfiles.rma))
> boxplot(exprs(celfiles.rma))
> help(expresso)   
> eset<- expresso(celfiles, normalize.method="qspline", bgcorrect.method="rma", pmcorrect.method="pmonly", summary.method="liwong")
background correction: rma 
normalization: qspline 
PM/MM correction : pmonly 
expression values: liwong 
background correcting...done.
normalizing...[1] "samples= 1209 k= 5 first= 999"
[1] "sampling(array= 1 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 1 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 1 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 1 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 1 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 2 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 2 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 2 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 2 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 2 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 3 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 3 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 3 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 3 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 3 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 4 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 4 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 4 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 4 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 4 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 5 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 5 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 5 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 5 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 5 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 6 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 6 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 6 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 6 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 6 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 7 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 7 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 7 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 7 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 7 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 8 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 8 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 8 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 8 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 8 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 9 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 9 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 9 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 9 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 9 iter= 5 off= 199 -200 199 -200 )"
^[[B[1] "sampling(array= 10 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 10 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 10 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 10 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 10 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 11 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 11 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 11 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 11 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 11 iter= 5 off= 199 -200 199 -200 )"
[1] "sampling(array= 12 iter= 1 off= 999 0 999 0 )"
[1] "sampling(array= 12 iter= 2 off= 799 -200 799 -200 )"
[1] "sampling(array= 12 iter= 3 off= 599 -200 599 -200 )"
[1] "sampling(array= 12 iter= 4 off= 399 -200 399 -200 )"
[1] "sampling(array= 12 iter= 5 off= 199 -200 199 -200 )"
done.
54675 ids to be processed
|                    |
|#######
