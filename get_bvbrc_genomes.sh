#!/bin/bash

# Usage check
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 download_directory file_extension1 [file_extension2 ...]"
    exit 1
fi

# Assign the first argument to the download directory
download_dir="$1"
shift # Shift the arguments to leave only the file extensions

# Create download directory if it doesn't exist
if [ ! -d "$download_dir" ]; then
    mkdir -p "$download_dir"
fi

# Ensure the genome_list file exists
if [ ! -f "genome_list" ]; then
    echo "The file 'genome_list' does not exist!"
    exit 1
fi

# Define an array of valid file extensions
valid_extensions=(.fna .faa .features.tab .ffn .frn .gff .pathway.tab .spgene.tab .subsystem.tab)

# Iterate over each line in genome_list
for genome in $(cat genome_list); do
    # Process each file extension provided as an argument
    for ext in "$@"; do
        # Check if the provided file extension is valid
        if [[ ! " ${valid_extensions[@]} " =~ " ${ext} " ]]; then
            echo "Invalid file extension: ${ext}"
            echo "Valid extensions are: ${valid_extensions[*]}"
            continue # Skip this extension
        fi

        # Download the specified file type for each genome to the specified directory
        echo "Downloading ${genome}${ext} to ${download_dir}"
        wget -qN -P "$download_dir" "ftp://ftp.bvbrc.org/genomes/${genome}/${genome}${ext}"
    done
done