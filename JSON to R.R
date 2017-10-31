library(jsonlite)
jsonfile<- fromJSON("https://core.ac.uk/api-v2/articles/search/cells?page=1&pageSize=20&metadata=true&fulltext=false&citations=false&similar=false&duplicate=false&urls=true&faithfulMetadata=false&apiKey=PykSKLeJz7ZldYQbNWoTDvwCfnarFXOg", flatten = TRUE)
View(jsonfile)
formatdata = jsonfile
text <- c(formatdata)
library(dplyr)
text_df<-data_frame(line =1:20, text=text)
library(tidytext)
text_df %>%
  unnest_tokens(word, text)