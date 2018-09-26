
# load packages
library("R.utils")
library("dismo")

# Load functions from source folder.
sourceDirectory("./functions")

# Raster lists for max/min teperature and precipitation.
max_temp = list.files("../datos_variables_ambientales/tmax",pattern="\\.tif$",full.names=TRUE)
min_temp = list.files("../datos_variables_ambientales/tmin",pattern="\\.tif$",full.names=TRUE)
precp = list.files("../datos_variables_ambientales/prec",pattern="\\.tif$",full.names=TRUE)

# Each to a raster brick.
tmax_brick = rasterListBrick(max_temp)
tmin_brick = rasterListBrick(min_temp)
prec_brick = rasterListBrick(precp)

# Create bioclimatic variables (dismo package).
bioclimatic <- biovars(prec, tmin_brick, tmax_brick)
