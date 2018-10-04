02\_wrangle-packages.R
================
jenny
Thu Oct 4 14:37:48 2018

``` r
## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.0.0           ✔ purrr   0.2.5      
    ## ✔ tibble  1.4.99.9004     ✔ dplyr   0.7.99.9000
    ## ✔ tidyr   0.8.1           ✔ stringr 1.3.1      
    ## ✔ readr   1.2.0           ✔ forcats 0.3.0

    ## ── Conflicts ────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(here)
```

    ## here() starts at /Users/jenny/Desktop/explore-libraries

``` r
ipt <- read_csv(here("data", "installed-packages.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Built = col_character()
    ## )

``` r
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
apt <- ipt %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(apt, here("data", "add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(apt_freqtable, here("data", "add-on-packages-freqtable.csv"))
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
```
