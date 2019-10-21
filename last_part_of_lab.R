##### Ruiheng Jin #####

library(tidyverse)
library(janitor)
library(here)

# read in data
db <- read_csv(here::here("data", "disease_burden.csv")) %>% 
  janitor::clean_names()
