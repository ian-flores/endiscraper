#' @export


get_categories <- function(urls){
  categories_df <- urls %>%
           stringr::str_remove("noticias/") %>%
           stringr::str_sub(start = 2) %>%
           stringr::str_split_fixed('/', n = 2)

  return(categories_df[,1])
}
