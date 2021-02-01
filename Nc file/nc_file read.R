#install.packages("ncdf4")
library(ncdf4)

#setup the working dir
x <-readline()
path <- gsub("\\\\", "/", x)
setwd(path)
getwd()


#referrence : https://rpubs.com/boyerag/297592
?nc_open
#reading the file
#for ease of use, renamed the file

nc_data  <- nc_open("AQUA_MODIS.20030101.nc", write=FALSE)

View(nc_data)
#nc_data in console to preview the data


#longitude
lons <- ncvar_get(nc_data, "lon")
head(lons)

#resource for merging files:
#http://hannahlab.org/cdo-extracting-a-variable-across-several-files/


