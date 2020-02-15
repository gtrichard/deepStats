[![CircleCI](https://circleci.com/gh/gtrichard/deepStats/tree/circleci-project-setup.svg?style=shield)](https://circleci.com/gh/gtrichard/deepStats/tree/circleci-project-setup) [![install with bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg?style=flat)](http://bioconda.github.io/recipes/deepstats/README.html) [![Conda version](https://img.shields.io/badge/bioconda-0.4-success.svg)](https://anaconda.org/bioconda/deepstats?color=success)
 ![](https://img.shields.io/badge/lifecycle-experimental-orange.svg) [![DOI](https://zenodo.org/badge/189997890.svg)](https://zenodo.org/badge/latestdoi/189997890)

<img src="https://github.com/gtrichard/deepStats/blob/master/docs/images/deepStats_logo.png?raw=true" width="720px" class="center">

## Description

**deepStats is a statistical and dataviz toolbox for deeptools, genomic signals, and more (GOterms, etc).**

It aims at providing statistical analyses and streamlining the production of high quality, color-blind friendly, and fully customisable plots (up to the fonts!) for your classic genomic datasets (.bed, .bigwig, gene lists). The goal of deepStats is thus to significantly decrease the amount of time spent in Inkscape/Illustrator to get publication ready plots, and decreasing the research time allotted to finding proper statistical analyses for your genomic signals and datasets. It also aims at giving tools to complement deepTools functions.

**This is currently a Work In Progress**

## Tools

Below are quickly presented the available tools. Click on their name to access their respective documentation, or check the Wiki:
https://github.com/gtrichard/deepStats/wiki

| Tool name         | Description                                          |
| ----------------- | ---------------------------------------------------- |
| [dsCompareCurves] | compares multiple genomic scores at multiple regions sets by bootstraps and per-bin distribution test. |
| [dsComputeBEDDensity] | computes BED files features density along the genome given a bin size, output as bedGraphs. |
| [dsComputeGCCoverage] | calculates the GC% along the genome for bins of a given size in a memory efficient way. |

[dsCompareCurves]: https://github.com/gtrichard/deepStats/wiki/dsCompareCurves
[dsComputeBEDDensity]: https://github.com/gtrichard/deepStats/wiki/dsComputeBEDDensity
[dsComputeGCCoverage]: https://github.com/gtrichard/deepStats/wiki/dsComputeGCCoverage

## Citation

If you use deepStats in your work, please cite this repository using the following :

> Gautier RICHARD. (2019, August 6). gtrichard/deepStats: deepStats 0.3.1 (Version 0.3.1). Zenodo. https://doi.org/10.5281/zenodo.3336593

## Installation

- **As a command-line tool through Conda**

By using the following command-line, you will be able to use the different tools listed below:
```
conda create -c bioconda -c conda-forge -n deepStats python=3.7 deepStats
conda activate deepStats
```

- **As R Notebooks**

**Currently, R notebooks are not up-to-date.**

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

You can install deepStats in a Galaxy instance through the [Galaxy Tool Shed](https://toolshed.g2.bx.psu.edu/repository/manage_repository?sort=name&operation=view_or_manage_repository&f-free-text-search=deepstats&id=4125c47ee1118a75)
