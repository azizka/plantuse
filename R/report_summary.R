#' Report some summary stats
#' 
#' @param data A dataset
#' @param measure The measure you want reported
#' @param na.rm Whether or not to remove NAs
#' @param quantiles The quantiles that should be included in the output
#' @export

report_summary <- function(data, measure, na.rm = TRUE, quantiles = NULL){
  
  if(measure == "mean"){
    out <- mean(x = data, na.rm = na.rm)
  } else if(measure == "median"){
    out <- median(x = data, na.rm = na.rm)  
  }
  out <- round(x = out, digits = 2)
  
  if(!is.null(quantiles)){
    out <- c(out, quantile(data, probs = quantiles, na.rm = na.rm))
  }
  names(out)[1] <- measure
  
  return(out)
}