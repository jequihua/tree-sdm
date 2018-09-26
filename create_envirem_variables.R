
# load packages
library("R.utils")
library("envirem")
library("rgdal")

# Load functions from source folder.
sourceDirectory("./functions")

# verify file structure (needed for envirem package to work)
verifyFileStructure("../envirem_folder")

# generate envirem variables and save rasters
rasters = generateRasters(var="all" ,maindir="../envirem_folder",outputDir="../datos_variables_ambientales/envirem",
                          timeName = "current",resName = "30s",tempScale = 1)
