# FundExtractor

A simple shell script to extract **Scheme Name** and **Asset Value** from the [AMFI India NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt) data source. The script processes the data and saves it in two formats:
-**Tab-Separated Values (TSV)**: A format suitable for further analysis in tools like Excel.
-**JSON**: A widely used data format for storing and exchanging data.

This script is useful for anyone who wants to download and analyze the asset values of mutual fund schemes in India.

##  Files

- `extract_nav.sh` — Main shell script that downloads and parses the data.
- `nav_data.tsv` — Output file with Scheme Name and Asset Value in TSV (Tab-Separated Values) format.
- `nav_data.json` — Same data in JSON format.
- `NAVAll.txt` — The raw data file was downloaded from AMFI.

##  How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/i-shreya/FundExtractor.git
   cd FundExtractor
2. Make the script executable with 'chmod +x extract_nav.sh'.
3. Run the script with './extract_nav.sh'
4. View the output files (nav_data.tsv and nav_data.json) for the extracted data.

## Prerequisites
Before running the script, ensure that the following tools are installed on your machine:

    curl: To fetch the NAV data from the provided URL.

    jq: A tool to format and process JSON data.
