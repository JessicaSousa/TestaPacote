#' SlidingWindow
#'
#' Esta função aplica a janela deslizante sobre uma série temporal
#'
#' @importFrom zoo rollapply
#' @param ts corresponde a uma série temporal numérica
#' @param n corresponde ao tamanho da subsequência desejada
#' @return \code{SlidingWindow} retorna um data.frame contendo todas a subsequências
#' de tamanho \code{n}
#' @export
#' @examples
#' ts <- runif(n = 100)
#' SlidingWindow(ts,10)
SlidingWindow <- function(ts, n) zoo::rollapply(ts,n, function(x) x)


#' EucDistance
#'
#' Essa função retorna a distância euclidiana entre dois vetores de mesmo comprimento
#'
#' @param x1 corresponde ao um vetor numérico de comprimento n
#' @param x2 corresponde ao um vetor numérico de comprimento n
#' @return \code{EucDistance} retorna um inteiro correspondendo a distância entre
#' as duas séries passadas
#' @export
#' @examples
#' ts.1 <- runif(n = 100)
#' ts.2 <- runif(n = 100)
#' EucDistance(ts.1,ts.2)
EucDistance <- function(x1, x2)  sqrt(sum((x1 - x2) ^ 2))


