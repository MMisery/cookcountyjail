#!/bin/bash
echo "Starting benchmark"
echo "<html><head><title>Benchmark</title></head><body>" > bench.html
echo "<h1>No related records</h1>" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=50" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=250" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=500" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=1000" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=5000" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=0" >> bench.html

echo "<h1>Related records</h1>" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=50&related=1" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=250&related=1" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=500&related=1" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=1000&related=1" >> bench.html
ab -n 30 -c 2 -w -d "http://cookcountyjail.recoveredfactory.net/api/1.0/countyinmate/?format=json&limit=5000&related=1" >> bench.html