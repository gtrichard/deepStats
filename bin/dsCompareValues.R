#!/usr/bin/env Rscript

suppressMessages( library( 'optparse' ) )
suppressMessages( library( 'ggplot2' ) )
suppressMessages( library( 'cowplot' ) )
suppressMessages( library( 'showtext' ) )
suppressMessages( library( 'tidyverse' ) )
suppressMessages( library( 'dichromat' ) )
suppressMessages( library( 'vroom' ) )
suppressMessages( library( 'reshape2' ) )

options( show.error.locations = TRUE )

#### ARGUMENTS ####

option_list = list(

  make_option( c( "-i","--input" ), type="character", default=NULL,
               help="DeepTools file obtained from multiBigwigSummary, either as
               .npz or tab-delimited (`--outRawCounts`).",
               metavar="character" ),

  make_option( c( "-o", "--output" ), type="character", default=NULL,
               help="Output prefix. A plot is generated in pdf format, alongside
               text files containing the stastistical tests results.",
               metavar="character" )
);

opt_parser = OptionParser( description= "
dsCompareValues computes boxplots and Wilcoxon Rank-sum Test on deepTools
multiBigwigSummary results. Optionally, multiple multiBigwigSummary files can be
provided as input to compare the biwigs one by one in different region sets.",
usage = "dsCompareValues --input multiBigwigSummary1.txt multiBigwigSummary2.txt \
        --output 1vs2_results", option_list=option_list );
opt = parse_args( opt_parser );

if ( is.null( opt$input ) ) {
  print_help( opt_parser )
  stop( "An input file must be supplied", call.=FALSE )
}

if ( is.null( opt$output ) ) {
  print_help( opt_parser )
  stop( "An output prefix must be supplied", call.=FALSE )
}


###### TEST PART ######

#opt[["input"]] <- "../test/compareValues_bound.txt"
#opt[["input"]] <- "../test/compareValues_unbound.txt"

###### DATA LOADING ######

# I still have to check how to perform the load of multiple files, this will
# be a different loading anyways and should produce multiple dataMatrix in one list

dataMatrix <- as.data.frame(tryCatch(
  {
    data <- list()
    message("One file provided, loading file as tab-delimited.")
    suppressMessages(inputData<-vroom(opt$input))
    data[["labels"]] <- as.character(colnames(inputData[,4:ncol(inputData)]))
    data[["matrix"]] <- as.matrix(inputData[,4:ncol(inputData)])
  },
  error=function(e) {
    data <- list()
    message("File loading failed, it might be compressed.")
    message("Loading file as .npz.")
    np <- import("numpy")
    inputData <- np$load(opt$input)
    data <- data.frame(inputData$f[["matrix"]])
    colnames(data) <- inputData$f[["labels"]]
    return(data)
  }
))
suppressWarnings (rm(data))
suppressWarnings (rm(np))
suppressWarnings (rm(inputData))
message("File loaded.")

dataMatrices <- list()
dataMatrices[[1]] <- dataMatrix

###### REFORMATING FOR STATS AND PLOTS ######

dataGGMatrices <- list()

for (i in 1:length(dataMatrices)){
  dataGGMatrices[[i]] <- melt(dataMatrices[[i]],...)
}

##### STATISTICS #####

# ANOVA

fit <- aov(data$ ~ A, data=mydataframe) # y est la variable numérique et A indique les groupes
summary(fit)

# WILCOXON


##### PLOTTING #####

ggplot()
