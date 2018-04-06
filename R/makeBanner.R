
## Banner banner.jpg
library(jpeg)
my_image <- readJPEG("./images/banner-plain.jpg")
jpeg(filename = "./images/banner.jpg", width = dim(my_image)[2], height = dim(my_image)[1])
par(mar=c(0,0,0,0))

plot(1:2, type='n', main="", xlab="", ylab="", axes = FALSE)
# Get the plot information so the image will fill the plot box, and draw it
lim <- par()
rasterImage(my_image, lim$usr[1], lim$usr[3], lim$usr[2], lim$usr[4])
grid()
#Add your plot !
lines(c(1, 1.2, 1.4, 1.6, 1.8, 2.0), c(1, 1.7, 1.2, 1.3, 1.8, 1.0), type="b", lwd=5, col="white")

dev.off()

## Curve Overlay pic01.jpg
library(drc)
library(jpeg)
my_image <- readJPEG("./images/pic01-plain.jpg")
jpeg(filename = "./images/pic01.jpg", width = dim(my_image)[2], height = dim(my_image)[1])
par(mar=c(0,0,0,0))
spinach$CURVE <- paste0("CMPD-0",spinach$CURVE)
spinach.m1 <- drm(SLOPE~DOSE, CURVE, data = spinach, fct = LL.4())
plot(spinach.m1)
lim <- par()

rasterImage(my_image, 10^lim$usr[1], lim$usr[3], 10^lim$usr[2], lim$usr[4])
plot(spinach.m1, col=c("white","orange","red", "green", "blue"), lwd= 5, add = TRUE, legend = TRUE)
grid()

dev.off()

## Compound pic02.jpg
#source("http://bioconductor.org/biocLite.R") # Sources the biocLite.R installation script. 
#biocLite("ChemmineR")
library(jpeg)
my_image <- readJPEG("./images/pic02-plain.jpg")
jpeg(filename = "./images/pic02.jpg", width = dim(my_image)[2], height = dim(my_image)[1])
par(mar=c(0,0,0,0))
spinach$CURVE <- paste0("CMPD-0",spinach$CURVE)
spinach.m1 <- drm(SLOPE~DOSE, CURVE, data = spinach, fct = LL.4())
plot(spinach.m1)
lim <- par()

rasterImage(my_image, 10^lim$usr[1], lim$usr[3], 10^lim$usr[2], lim$usr[4])
plot(spinach.m1, col=c("white","orange","red", "green", "blue"), lwd= 5, add = TRUE, legend = TRUE)
grid()

dev.off()

