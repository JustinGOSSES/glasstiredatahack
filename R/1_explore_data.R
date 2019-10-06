library(dplyr)
library(tidyr)
library(lubridate)


library(maps)
library(maptools)
library(rgdal)

#library(tidycensus)
library(data.table)

dat <- fread('build/dat.csv')

venue_counts <- dat %>%
                group_by(venue_uid) %>%
                summarize(venue_count = n(),
                          lat = min(lat),
                          lng = min(lng))

zip28 <- readOGR('~/Dev/glasstiredatahack/data/ZIP28_2017.shp')

plot(zip28)
symbols(venue_counts$lng, venue_counts$lat, circles=.0008*sqrt(venue_counts$venue_count), add=TRUE, inches=FALSE, bg="#00000050", lwd=0.5)







