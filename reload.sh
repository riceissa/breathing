#!/bin/bash

git up && make clean && make all && git add docs && git commit -m "Regenerate all outputs" && git push && make clean_nonfinal && echo -e "\n\nMAKE SURE TO git up FROM GIT-BASH!"
