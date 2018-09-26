
# load packages
library("raster")

rasterListBrick = function(raster_list){
  
  # Assumes all rasters share extent, projection and resolution.
  
  raster_brick = brick()
  for (i in 1:length(raster_list)){
    raster_brick = addLayer(raster_brick,raster(raster_list[i]))
  }
  return(raster_brick)
}