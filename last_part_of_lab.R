##### Ruiheng Jin #####

library(tidyverse)
library(janitor)
library(here)

# read in data
db <- read_csv(here::here("data", "disease_burden.csv")) %>% 
  janitor::clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

# create a subset, then graph
db_sub <- db %>% 
  filter(country_name %in% c("Afghanistan", "Japan", "United States", "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both")

# make basic graph
ggplot(db_sub, aes(x = year,
                   y = deaths_per_100k)) +
  geom_line(aes(color = country_name))

# save graph
ggsave(here::here('final_graph','disease_graph.jpg'))
















