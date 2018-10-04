#' ---
#' output: github_document
#' ---


## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

library(tidyverse)
library(here)

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
apt_freqtable <- read_csv(here("data", "add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
p <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that came from me (Jenny)
ggsave(here("figs", "built-barchart.png"), plot = p, height = 3)
