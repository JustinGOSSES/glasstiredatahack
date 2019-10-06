library(dplyr)
library(tidyr)
library(lubridate)
library(jsonlite)

"https://coolors.co/f4e8c1-a0c1b9-70a0af-706993-331e38"

graph_dat <- dat %>% 
 select(venue_uid, artist_uid) %>%
 group_by(venue_uid, artist_uid) %>%
 summarize(num_visits=n()) %>%
 mutate(venue_name = paste0("venue-", venue_uid),
        artist_name = paste0("artist-", artist_uid)) %>%
 filter(!is.na(artist_uid)) %>%
arrange(-num_visits, venue_uid, artist_uid) %>%
data.frame()

## Write connections

connection_names <- c(source="artist_name", target="venue_name", value="num_visits")
graph_dat %>%
    select(connection_names) %>%
    jsonlite::toJSON(auto_unbox=T) %>% 
    write('build/connections-data.json')

artist_nodes <- data.frame(
                            id=unique(graph_dat$artist_name),
                            group=1
                )
artist_nodes %>%
    jsonlite::toJSON(auto_unbox=T) %>%
    write('build/artist-nodes-data.json')

venue_nodes <- data.frame(
                            id=unique(graph_dat$venue_name),
                            group=2
                )

venue_nodes %>%
    jsonlite::toJSON(auto_unbox=T) %>%
    write('build/venue-nodes-data.json')