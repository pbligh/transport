library(tidyverse)
library(tmap)
library(sf)
library(ggplot2)


# bixi ------------------------------------------------------------
bixi <- read_csv("/Users/philipbligh/Downloads/20220105-donnees-ouvertes-0d544b/20220105_stations.csv")
plot(bixi)
tm_shape(bixi) + 
  tm_dots()

bixi <- bixi %>% st_as_sf(coords = c("longitude","latitude"), crs = 4326)

bixi <- bixi[-c(523),]

tmap_mode(mode = "view")
tm_shape(bixi) + 
  tm_dots()
# electric ---------------------------------------
electric_stations <- read_csv("/Users/philipbligh/Downloads/alt_fuel_stations_2022.csv")

electric_stations <- electric_stations %>% st_as_sf(coords = c("Longitude","Latitude"), crs = 4326)

tm_shape(electric_stations) + 
  tm_dots()



