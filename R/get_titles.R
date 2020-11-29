get_titles <- function(articles_list){
  return(articles_list %>%
           rvest::html_nodes("h1") %>%
           rvest::html_text())
}
