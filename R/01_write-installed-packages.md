01\_write-installed-packages.R
================
jenny
Thu Oct 4 14:32:18 2018

``` r
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
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv(path = here("data", "installed-packages.csv"))

head(ipt)
```

    ## # A tibble: 6 x 5
    ##   Package   LibPath                          Version Priority Built
    ##   <chr>     <chr>                            <chr>   <chr>    <chr>
    ## 1 abc       /Users/jenny/resources/R/library 2.1     <NA>     3.5.0
    ## 2 abc.data  /Users/jenny/resources/R/library 1.0     <NA>     3.5.0
    ## 3 abind     /Users/jenny/resources/R/library 1.4-5   <NA>     3.5.0
    ## 4 acepack   /Users/jenny/resources/R/library 1.4.1   <NA>     3.5.0
    ## 5 acss.data /Users/jenny/resources/R/library 1.0     <NA>     3.5.0
    ## 6 actuar    /Users/jenny/resources/R/library 2.3-1   <NA>     3.5.0

``` r
nrow(ipt)
```

    ## [1] 1418
