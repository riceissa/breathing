#!/bin/bash

git up && make clean && make all && git add docs && git commit -m "Regenerate all outputs" && git push && make clean_nonfinal
