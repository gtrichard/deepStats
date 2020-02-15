library("tools")
setwd(dir = "tests")

system("../bin/dsComputeBEDDensity --input input/genome_genes.bed --chromSize input/genome_genes_chrom.sizes --windowSize 1000 -o output/tmp_dsComputeBEDDensity")
cat("dsComputeBEDDensity run finished\n")
md5sum("output/tmp_dsComputeBEDDensity.bedGraph")
md5sum("output/res_dsComputeBEDDensity.bedGraph")
if ( md5sum("output/tmp_dsComputeBEDDensity.bedGraph") != md5sum("output/res_dsComputeBEDDensity.bedGraph") ){
  stop("dsComputeBEDDensity output is not as expected.")
}

system("../bin/dsComputeGCCoverage --input input/genome.fa --windowSize 1000 -o output/tmp_dsComputeGCCoverage")
cat("dsComputeGCCoverage run finished\n")
md5sum("output/tmp_dsComputeGCCoverage.bedGraph")
md5sum("output/res_dsComputeGCCoverage.bedGraph")
if ( md5sum("output/tmp_dsComputeGCCoverage.bedGraph") != md5sum("output/res_dsComputeGCCoverage.bedGraph") ){
  stop("dsComputeGCCoverage output is not as expected.")
}

system("../bin/dsCompareCurves -i input/deeptools_matrix.txt -o output/tmp_dsCompareCurves -b 50")
cat("dsCompareCurves run finished\n")
md5sum("output/tmp_dsCompareCurves.dscc")
md5sum("output/tmp_dsCompareCurves.dscc")
if ( md5sum("output/tmp_dsCompareCurves.dscc") != md5sum("output/res_dsCompareCurves.dscc") ){
  stop("dsCompareCurves output is not as expected.")
}
