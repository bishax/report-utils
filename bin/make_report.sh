#!/bin/bash
set -euo pipefail

cd $(dirname $0)/../output/
pandoc -s report.md\
 --metadata-file latex_metadata.yaml\
 -f markdown\
 -o report.tex\
 --bibliography 'technicalreport.bib'\
 --filter ../bin/pandoc_altair_filter.py\
 --natbib -F pandoc-crossref\
 --metadata figure_path="figures"\
 --variable urlcolor=blue
pdflatex report.tex
bibtex report || echo "Bibtex unsuccessful!"
pdflatex report.tex
pdflatex report.tex
