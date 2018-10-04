
<!-- README.md is generated from README.Rmd. Please edit that file -->

# explore-libraries

## Overview

The goal of packages-report is to explore the packages in my R
installation.

I have 1388 add-on packages installed.

Here’s how they break down in terms of which version of R they were
built under, which is related to how recently they were updated on CRAN.

| Built |    n | prop |
| :---- | ---: | ---: |
| 3.5.0 | 1342 | 0.97 |
| 3.5.1 |   46 | 0.03 |

![](figs/built-barchart.png)

### Flow of the analysis

| Input                                                                    | Script                                                              | Output                                                                                                                           |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
|                                                                          | [R/01\_write-installed-packages.R](R/01_write-installed-packages.R) | [data/installed-packages.csv](data/installed-packages.csv)                                                                       |
| [data/installed-packages.csv](data/installed-packages.csv)               | [R/02\_wrangle-packages.R](R/02_wrangle-packages.R)                 | [data/add-on-packages.csv](data/add-on-packages.csv)<br>[data/add-on-packages-freqtable.csv](data/add-on-packages-freqtable.csv) |
| [data/add-on-packages-freqtable.csv](data/add-on-packages-freqtable.csv) | [R/03\_barchart-packages-built.R](R/03_barchart-packages-built.R)   | [figs/built-barchart.png](figs/built-barchart.png)                                                                               |
