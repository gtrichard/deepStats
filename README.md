[![install with bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg?style=flat)](http://bioconda.github.io/recipes/deepstats/README.html) ![](https://img.shields.io/badge/lifecycle-experimental-orange.svg) ![](https://anaconda.org/bioconda/deepstats/badges/version.svg) [![DOI](https://zenodo.org/badge/189997890.svg)](https://zenodo.org/badge/latestdoi/189997890)

![](docs/images/deepStats_logo.png?raw=true "Title")

**deepStats v0.3 is a statistical and dataviz toolbox for deeptools, genomic signals, and more (GOterms, etc).**

**This is currently a Work In Progress**

## Citation

If you use deepStats in your work, please cite this repository using the DOI from the following link:
https://zenodo.org/badge/latestdoi/189997890

## Installation

- **As a command-line tool through Conda**

By using the following command-line, you will be able to use the different tools listed below:
```
conda create -c bioconda -c conda-forge -n deepStats python=3.7 deepStats
conda activate deepStats
```

- **As R Notebooks**

Install the following packages in your R environment:
```
install.packages('optparse',repos = "http://cran.us.r-project.org")
install.packages('boot',repos = "http://cran.us.r-project.org")
install.packages('ggplot2',repos = "http://cran.us.r-project.org")
install.packages('cowplot',repos = "http://cran.us.r-project.org")
install.packages('tidyverse',repos = "http://cran.us.r-project.org")
install.packages('dichromat',repos = "http://cran.us.r-project.org")
install.packages('purrr',repos = "http://cran.us.r-project.org")
```

Then, access the R Notebooks stored in `deepStats/notebooks/` by cloning this repository:
```
git clone https://github.com/gtrichard/deepStats
```

- **As Galaxy wrappers**

You can install deepStats in a Galaxy instance through the Tool Shed:
https://toolshed.g2.bx.psu.edu/view/gtrichard/deepstats_dscomparecurves/cbeae0f83ff8

## Tools

- **dsCompareCurves**

Compares the curves derived from multiple genomic signals and region sets by using bootstrapping and Wilcoxon rank-sum tests in order to identify significantly different loci (bins). It uses `deeptools reference-point computeMatrix --outFileNameMatrix matrix.txt` (can be `reference-point` or `scaled-region`) as an input file. `dsCompareCurves --help` will give you all required information to use the tool. For further documentation about deepTools and how to generate the input file, please refer to: https://deeptools.readthedocs.io/en/develop/content/tools/computeMatrix.html.

- **dsCompareValues**

Not yet available (next planned).

- **dsCompareToRandom**

Not yet available.

- **dsGOCloudMap**

Not yet available.
