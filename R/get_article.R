#' @export


get_article <- function(url_path){
  base_url <- "elnuevodia.com"

  full_url <- paste0(base_url, url_path)

  article <- get_page_content(full_url)

  # Date
  date <- article %>%
    rvest::html_nodes("[class='toolbar-item item-date']") %>%
    rvest::html_text()

  # Author
  author <- article %>%
    rvest::html_nodes("[class='toolbar-item item-author']") %>%
    rvest::html_text()

  # Article Body
  body <- article %>%
    rvest::html_nodes("[class='article-body']") %>%
    rvest::html_nodes("[class='ENDBody content-block article-body-block']") %>%
    rvest::html_text()

  if (identical(date, character(0))){date <- NA}
  if (identical(author, character(0))){author <- NA}
  if (identical(body, character(0))){body <- NA}

  article_info <- list(
    'date' = date,
    'author' = author,
    'body' = body,
    'url_path' = url_path
  )

  return(article_info)
}
