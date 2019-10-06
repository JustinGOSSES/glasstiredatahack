all: explore

explore: build/dat.csv
	Rscript R/1_explore_data.R

build/dat.csv: build/ R/0_prep_data.R
	Rscript R/0_prep_data.R

build/:
	rm -rf build
	mkdir build

clean:
	rm -rf build