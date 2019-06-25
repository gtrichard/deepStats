.. image:: ./docs/images/deepStats_logo.png
   :scale: 20 %
   :height: 100px
   :width: 100 px
   :align: left

deepStats: a stastitical toolbox and beyond for deeptools and genomic signals.


Installation
============

As a command-line tool through Conda
------------------------------------

By using the following command-line, you will be able to use the different tools listed below:
`conda install deepStats`

As R Notebooks
--------------

Simply install these dependencies:

```
install.packages('optparse',repos = "http://cran.us.r-project.org")
install.packages('boot',repos = "http://cran.us.r-project.org")
install.packages('ggplot2',repos = "http://cran.us.r-project.org")
install.packages('cowplot',repos = "http://cran.us.r-project.org")
install.packages('tidyverse',repos = "http://cran.us.r-project.org")
install.packages('dichromat',repos = "http://cran.us.r-project.org")
install.packages('purrr',repos = "http://cran.us.r-project.org")
```

Then clone this repository using `git clone https://github.com/gtrichard/deepStats` to access the R Notebooks stored in `deepStats/notebooks/`.

As Galaxy wrappers
------------------

Not yet available.

Tools
=====

compareCurves
-------------

Compares the curves derived from multiple genomic signals and region sets by using bootstrapping and Wilcoxon rank-sum tests in order to identify significantly different loci (bins). It uses `deepTools computeMatrix --outFileNameMatrix matrix.txt` as an input file. `compareCurves --help` will give you all required information to use the tool. For further documentation about deepTools and how to generate the input file, please refer to: https://deeptools.readthedocs.io/en/develop/content/tools/computeMatrix.html.


compareValues
-------------



compareToRandom
---------------
