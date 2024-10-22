

# Data Ideas

## What we have:
- venue names
- venue websites sometimes
- venue locations
- event artist IDs

## What we don't have:
- artist names
- art types

## Cleaning tasks
- finding actual names
- combine into one sheet
- create metadata like:
	- whether it is always single artists
	- max number of artists
	- min number of artists
	- how often events are heald there
	- whether the event location is new or old
	- how regular are event totals
	- how many similar art event locations are nearby within X distance


## Generating other Art related information / data



## Bringing in non-art data
- Census
	- ?
- Science
	- Point:
		- job titles searched for on point basis.
		- industries of job title on point basis.
	- Area grid or hex:
		- most common job title in x area basis.
		- most common industry in x area basis.
		- most common not widely distributed job title term searched for.
		- sum number of science job adverstisement tied buildings in area x.

# Purposes/Goals/Audiences

## Audiences:
- People interested in finding out what artist venues are near them.
- People looking to move to area X and wanting to know within X distance of Z location, what venus and art shows are nearby. 

## Questions:
- Is there a pulse to the Houston Art Scene?
- What is the distribution of the Houston art scene?
- Is there a way to categorize art venues based on:
	- Which venues share artists
	- Which venues share art types
	- Which venues are alike in how often they have events?
	- Which venus are alike based on art type?
- Is there a way to categorize Houston artists based on:
	- Number of Houston shows they have done?
	- Who is "new" and who is "established". 
	- Are there certain artists that have shown multiple times but tend to only show in certain areas?
- Science and Art: Are there relationships, trends, etc. 
	- How is art distributed in comparison to science jobs?
		- Do the highest number of "points" occur in the same place?
		- Do certain categorization of science jobs and art events coincide? Can we hypothsize why?
			- Do job types or industries get associated geographically with certain art venue characteristics?
				- Does oil industry jobs get associated with galleries?
				- Do doctors get associated mostly with art museums?
				- Which science career should you follow if you want to be surrounded by art venues? 

## What to build?
- Tableau StoryBoard?
- KeplerGL Maps and map layers
- Tensorboard visualization to find similiar items...

## What other data?
- Science jobs... but not interactive linked except if using something like geopandas
- Can I combine Tableau & KeplerGL? in a webpage?
- What census data to bring in? Based on zipcode? 
	- number of events vs. race % 
	- number of events vs. 


## Things to maximize:
- Provides Insight!
- Easy for general audience
- Provides Glastire with insight
- Can be on their site?

Three pages:
- Story
	- What is the distribution! 
		- Science vs. Art
		- 	What is the categorization?
			- What are mapped areas
				- Types of art go here & types of science go here
		- event frequency for each venue as timeline
		- artist total appearances
		- new artists with multiple appearances 
		- lost artists with multiple appearances
		- total number of events at venue
	- 
- Exploration with Kepler
- Exploration with Tableau
- Exploration with Tensorboard


Kepler Idea:
- Dots for:
	-venue/jobs
- Dots color for:
	-venue type
	-job industry
- heatmap/elevation of grid for:
	-  counts within a grid square for art events or art venues | science job company buildings
- Arc & brush:
	- artists at more than one venue
	- science job term at more than one location
- Arc Color:
	- does artist at more than one venue appear to go to different venue type?

