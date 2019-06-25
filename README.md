![Alt text](docs/images/deepStats_logo.png?raw=true "Title")

**deepStats is a statistical and dataviz toolbox for deeptools, genomic signals, and more (GOterms, etc).**

## Installation

- **As a command-line tool through Conda**

By using the following command-line, you will be able to use the different tools listed below:
```
conda create -n deepStats -c bioconda deepStats
conda activate deepStats
```

Or simply:
```
conda install -c bioconda deepStats
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

Not yet available.

## Tools

![Alt text](docs/images/tools.png?raw=true "Title")

- **compareCurves**

Compares the curves derived from multiple genomic signals and region sets by using bootstrapping and Wilcoxon rank-sum tests in order to identify significantly different loci (bins). It uses `deepTools computeMatrix --outFileNameMatrix matrix.txt` as an input file. `compareCurves --help` will give you all required information to use the tool. For further documentation about deepTools and how to generate the input file, please refer to: https://deeptools.readthedocs.io/en/develop/content/tools/computeMatrix.html.

- **compareValues**

- **compareToRandom**
