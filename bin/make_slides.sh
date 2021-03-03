#!/bin/bash
set -euo pipefail

cd $(dirname $0)/../output/
pandoc -t revealjs\
 -s\
 -o myslides.html\
 slides.md\
 --filter ../bin/pandoc_altair_filter.py\
 --metadata figure_path="figures"\
 --metadata-file html_metadata.yaml\
 --metadata bucket="nesta-test"\
 -V revealjs-url=https://unpkg.com/reveal.js
 #@3.9.2/

