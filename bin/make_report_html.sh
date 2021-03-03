#!/bin/bash
set -euo pipefail

cd $(dirname $0)/../output
pandoc -s report.md\
 --metadata-file html_metadata.yaml\
 -f markdown\
 -o report.html\
 -F pandoc-crossref\
 --bibliography 'bibliography.bib'\
 --filter ../bin/pandoc_altair_filter.py\
 --metadata bucket="nesta-test"\
 --self-contained\
 --toc\
 -C
