03\_barchart-packages-built.R
================
jenny
Thu Oct 4 14:38:25 2018

``` r
## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

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
## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
apt_freqtable <- read_csv(here("data", "add-on-packages-freqtable.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Built = col_character(),
    ##   n = col_double(),
    ##   prop = col_double()
    ## )

``` r
## if you use ggplot2, code like this will work:
p <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that came from me (Jenny)
ggsave(here("figs", "built-barchart.png"), plot = p, height = 3)
```

    ## Saving 7 x 3 in image
