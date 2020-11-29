get_articles_list <- function(html){
  return(html %>%
           rvest::html_nodes("article"))
}
