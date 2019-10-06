all: graphdata.json

make_json: build/dat.csv R/1_make_data.R
	Rscript R/1_make_data.R

graphdata.json: make_json
	echo '{"nodes": [' > build/graphdata.json
	cat build/venue-nodes-data.json | sed 's/]//g' | sed 's/\[//g' >> build/graphdata.json
	echo "," >> build/graphdata.json
	cat build/artist-nodes-data.json | sed 's/]//g' | sed 's/\[//g' >> build/graphdata.json
	echo '],' >> build/graphdata.json
	echo '"links": [' >> build/graphdata.json
	cat build/connections-data.json | sed 's/]//g' | sed 's/\[//g' >> build/graphdata.json
	echo ']}' >> build/graphdata.json

build/dat.csv: build/ R/0_prep_data.R
	Rscript R/0_prep_data.R

build/:
	rm -rf build
	mkdir build

clean:
	rm -rf build