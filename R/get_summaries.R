get_summaries <- function(articles_list){
  summaries <- c()

  for (idx in 1:length(articles_list)){
    summary <- articles_list[[idx]] %>%
      rvest::html_node("[class='story-tease-summary']")

    if (length(summary) == 0){
      summaries[idx] <- "NA"
    }

    summaries[idx] <- summary %>% rvest::html_text()
  }

  return(summaries)
}
