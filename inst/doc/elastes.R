## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("elastes")

## -----------------------------------------------------------------------------
library(elastes)

## -----------------------------------------------------------------------------
# install.packages("shapes")
library(shapes)
data(digit3.dat)

## -----------------------------------------------------------------------------
digit3 <- apply(digit3.dat, MARGIN = 3, FUN = function(curve){
  data.frame(X1 = curve[,1], X2 = curve[,2])
})

## ---- fig.height = 3.5, fig.width = 3.5, fig.align = "center"-----------------
mean_smooth <- compute_elastic_shape_mean(
  digit3, 
  knots = seq(0, 1, length = 11), 
  type = "smooth"
)
plot(mean_smooth, main = "smooth mean")

## ---- fig.height = 3.5, fig.width = 3.5, fig.align = "center"-----------------
mean_poly <- compute_elastic_shape_mean(
  digit3, 
  knots = seq(0, 1, length = 13),
  type = "polygon"
)
plot(mean_poly, col = "blue", main = "polygonal mean")

## ---- eval=FALSE--------------------------------------------------------------
#  help(compute_elastic_shape_mean)

