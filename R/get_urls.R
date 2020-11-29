#' @export


get_urls <- function(articles_list){
  return(articles_list %>%
           rvest::html_nodes("h1") %>%
           rvest::html_nodes("a") %>%
           rvest::html_attrs() %>%
           purrr::map_chr(~.x[["href"]]))
}
