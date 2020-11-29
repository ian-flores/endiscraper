#' @export

get_all_articles_info <- function(urls){
  articles_info <- list()

  for (idx in 1:length(urls)){
    articles_info[[idx]] <- get_article(urls[idx])
  }

  return(articles_info)
}
