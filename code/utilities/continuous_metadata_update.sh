#!/bin/bash
cd utilities
while true; do
    python3 ./dump_all_metadata.py
    python3 ./search_dataset_metadata.py all
    python3 ./dump_all_metadata.py
    cp ./all_sampleinformation.tsv /app/temp/all_sampleinformation.tsv
    sleep 1
done
