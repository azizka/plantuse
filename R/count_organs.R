#'Title Counting Plant Organs
#'
#'THis function counts the numer of plant organs used. 
#'
#'@param x This is a data.frame or tibble of plant uses. 
#'needs to include columns "organ.rough".
#'
#'@export
#'@examples
#'
#'data("plant_use")
#'
#'count_organs(x = plant_use)
#'
#'@importFrom dplyr count group_by
#'


count_organs <- function(x){
  dat <- x %>% 
    group_by(organ.rough) %>% 
    count()
  
  ggplot(data = dat)+
    geom_bar(aes(x = organ.rough, y = n), stat = "identity")+
    theme_bw()+
    theme(axis.text = element_text(angle = 45))
}
