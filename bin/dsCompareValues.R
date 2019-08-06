#!/usr/bin/env Rscript

suppressMessages( library( 'optparse' ) )
suppressMessages( library( 'ggplot2' ) )
suppressMessages( library( 'cowplot' ) )
suppressMessages( library( 'showtext' ) )
suppressMessages( library( 'tidyverse' ) )
suppressMessages( library( 'dichromat' ) )
suppressMessages( library( 'vroom' ) )
suppressMessages( library( 'reshape2' ) )
#suppressMessages( library( 'purrr' ) )

options( show.error.locations = TRUE )

#### ARGUMENTS ####

option_list = list(
  
  make_option( c( "-i","--input" ), type="character", default=NULL,
               help="DeepTools file obtained from multiBigwigSummary.", metavar="character" ),
  
  make_option( c( "-o", "--output" ), type="character", default=NULL,
               help="Output prefix. A plot is generated in pdf format, alongside text files
               containing the stastistical tests results.", metavar="character" )
);

opt_parser = OptionParser( description= "
                           This tool assesses if multiple genomics signals ( ChIP-seq, ATAC-seq... ) are significantly different or
                           not between conditions ( control, KO1, KO2, etc ). `dsCompareCurves` uses bootstraps and corrected
                           Wilcoxon Rank-sum tests to do so. The input of this tool corresponds to the output of deepTools
                           `computeMatrix --outFileNameMatrix`. If multiple region sets have been used in deepTools, one plot and
                           tab-delimited table will be produced for each set of regions.",
                           usage = "dsCompareCurves --input file.txt --output results", option_list=option_list );
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

opt$input="Downloads/computeMatrixOperations.mat"
  
###### DATA LOADING ######

data <- vroom("Downloads/computeMatrixOperations.mat",delim = "\t",skip=1,col_names = FALSE)

metadata <- list()
metadata[["sample_names"]] <- colnames(data[,3:ncol(data)])

###### REFORMATING FOR STATS AND PLOTS ######

data <- melt(data,id.vars = c("chr","start","end"))

##### STATISTICS #####

# ANOVA

fit <- aov(data$ ~ A, data=mydataframe) # y est la variable numérique et A indique les groupes
summary(fit)

# WILCOXON


##### PLOTTING #####

ggplot()



  
  
  