# BV-BRC-Genome-Downloader
# Description
BV-BRC-Genome-Downloader is a powerful command-line utility designed to facilitate the bulk downloading of genomic data files from the Bacterial and Viral Bioinformatics Resource Center (BV-BRC). It supports various file types, including FASTA sequences, annotation files, and more. This tool is built to assist researchers and bioinformaticians in efficiently managing and retrieving genomic data for their projects.

# Features
Multiple File Types: Supports downloading of a wide range of genomic data file types.
Bulk Downloading: Allows for the downloading of data for multiple genomes listed in a single file.
Error Logging: Tracks and logs download failures for easy troubleshooting.

# Installation
Clone the repository to your local machine:

git clone https://github.com/[YourUsername]/BV-BRC-Genome-Downloader.git
Navigate to the cloned repository:
cd BV-BRC-Genome-Downloader
Make the script executable:
chmod +x get_bvbrc_genomes.sh

# Usage
Prepare a genome_list file containing the IDs of the genomes you wish to download, with one ID per line.

Run the script, specifying the download directory and the desired file extension(s). For example:

./get_bvbrc_genomes.sh /path/to/download/directory .fna .faa .gff

If any downloads fail, review the failed_downloads.log file in the specified download directory for details.
Supported File Extensions
.fna - FASTA contig sequences
.faa - FASTA protein sequence files
.features.tab - Tab-delimited genomic features
.ffn - FASTA nucleotide sequences for genomic features
.frn - FASTA nucleotide sequences for RNAs
.gff - Genome annotations in GFF format
.pathway.tab - Metabolic pathway assignments in tab-delimited format
.spgene.tab - Specialty gene assignments in tab-delimited format
.subsystem.tab - Subsystem assignments in tab-delimited format

# Troubleshooting
Refer to the failed_downloads.log file for information on any files that failed to download. Ensure your internet connection is stable and that you have permissions to access the specified directories.

# Acknowledgments
We would like to extend our sincere gratitude to the Bacterial and Viral Bioinformatics Resource Center (BV-BRC), formerly known as PATRIC, for making their comprehensive database of bacterial and viral genomic data accessible to the research community.

# Citation
If you are using the pan_genome_analysis.py script for your research, please consider citing it as follows:
Sharma, V. (2024). get_bvbrc_genomes.sh [Shell script]. Retrieved from https://github.com/vsmicrogenomics/BV-BRC-Genome-Downloader
