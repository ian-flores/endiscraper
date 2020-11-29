get_page_content <- function(url){
  res <- httr::GET(url = url)
  content <- rawToChar(res$content)
  html <- xml2::read_html(content)

  return(html)
}
