## Documenting metadata

# Function for metadatar package
install.packages("devtools")
devtools::install_github("annakrystalli/metadatar")

# get data that we are going to use for exercise
install.packages("gapminder")
gapminder::gapminder

# need these packages also
install.packages("here")
  # this will help build robust paths when you use R project as it will always set the root to the root of the package
install.packages("tidyverse")


readr::write_csv(gapminder::gapminder, path = here::here("data/raw/gapminder.csv"))

# read in gapminder.csv as our raw data 
gap_df <- readr::read_csv(here::here("data/raw/gapminder.csv"))

# check the data
gap_df


## Create and save meta_tbl shell
gap_meta_shell <- metadatar::create_meta_shell(gap_df, factor_cols = c("country", "continent"))
write.csv(gap_meta_shell, file= here::here("data/metadata/gap_meta_shell.csv"), row.names = F)

# Complete the metadata shell
# do so in excel haha!

# attribute definiton - what do they need to know to understand it
# minimum - e.g. 0 for pop size
