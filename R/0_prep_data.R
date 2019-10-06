library(dplyr)
library(tidyr)
library(lubridate)
library(tidycensus)
library(data.table)

venues <- fread('Glasstire/venues.csv') %>%
            separate('coordinates', c('lat','lng'), ',') %>%
            mutate(lat = as.numeric(lat),
                   lng = as.numeric(lng))

events <- fread('Glasstire/events.csv') %>%
            mutate(start_date = ymd(start_date),
                    end_date = ymd(end_date))

artists <- fread('Glasstire/event_artists.csv')


dat <- merge(venues, events, by='venue_uid', all.x=T) %>%
        merge(artists, by='event_uid', all.x=T)


write.csv(dat, 'build/dat.csv')