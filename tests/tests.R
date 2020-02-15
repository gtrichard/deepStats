library("tools")
setwd(dir = "tests")

cat("dsComputeBEDDensity run finished\n")
md5sum("output/tmp_dsComputeBEDDensity.bedGraph")
md5sum("output/res_dsComputeBEDDensity.bedGraph")
if ( md5sum("output/tmp_dsComputeBEDDensity.bedGraph") != md5sum("output/res_dsComputeBEDDensity.bedGraph") ){
  stop("dsComputeBEDDensity output is not as expected.")
}

cat("dsComputeGCCoverage run finished\n")
md5sum("output/tmp_dsComputeGCCoverage.bedGraph")
md5sum("output/res_dsComputeGCCoverage.bedGraph")
if ( md5sum("output/tmp_dsComputeGCCoverage.bedGraph") != md5sum("output/res_dsComputeGCCoverage.bedGraph") ){
  stop("dsComputeGCCoverage output is not as expected.")
}

cat("dsCompareCurves run finished\n")
md5sum("output/tmp_dsCompareCurves.dscc")
md5sum("output/tmp_dsCompareCurves.dscc")
if ( md5sum("output/tmp_dsCompareCurves.dscc") != md5sum("output/tmp_dsCompareCurves.dscc") ){
  stop("dsCompareCurves output is not as expected.")
}
