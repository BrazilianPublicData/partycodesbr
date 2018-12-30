#' @importFrom xml2 read_html
#' @importFrom rvest html_table
#' @importFrom magrittr "%>%"
#' @importFrom dplyr select
#' @importFrom dplyr slice
#' @importFrom tibble tibble
#' @title Return Numerical codes for Brazilian political parties from the
#' Tribunal Superior Eleitoral (TSE).
#' @export
tse_codes <- function(){
  url <- 'http://www.tse.jus.br/partidos/partidos-politicos/registrados-no-tse'

  xml2::read_html(url) %>%
  rvest::html_table() %>%
  .[[1]] %>%
  dplyr::select(abbreviation = SIGLA,
         name = NOME,
         president = `PRES. NACIONAL`,
         code = 6) -> tb

  rown <- nrow(tb)
  tb <- dplyr::slice(tb, -rown) %>% tibble::as_tibble()

  Encoding(tb$name) <- "latin1"
  Encoding(tb$president) <- "latin1"

  return(tb)
}
