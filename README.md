# FundExtractor

A simple shell script to extract **Scheme Name** and **Asset Value** from the [AMFI India NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt) data source.
The data is saved in both TSV(tab-separated values) and JSON format.

##  Files

- `extract_nav.sh` — Main shell script that downloads and parses the data.
- `nav_data.tsv` — Output file with Scheme Name and Asset Value in TSV (Tab-Separated Values) format.
- `nav_data.json` — Same data in JSON format.
- `NAVAll.txt` — Raw data file downloaded from AMFI.

##  How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/i-shreya/FundExtractor.git
   cd FundExtractor
2. Make the script executable with 'chmod +x extract_nav.sh'.
3. Run the script with './extract_nav.sh'
4. View the output files (nav_data.tsv and nav_data.json) for the extracted data.

