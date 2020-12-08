#' Hello World
#' 
#' @param whom Whom to greet
#' @export

greet <- function(whom){
  out <- paste0("Hello '", whom, "'!")
  return(out)
}