#!/bin/bash
set -euo pipefail

BUCKET="nesta-test"

cd $(dirname $0)/../output
pandoc -s report.md\
 --metadata-file html_metadata.yaml\
 -f markdown\
 -o report.html\
 -F pandoc-crossref\
 --bibliography 'bibliography.bib'\
 --filter ../bin/pandoc_altair_filter.py\
 --metadata bucket=$BUCKET\
 --toc\
 -C
aws s3 cp figures/ s3://$BUCKET/report-utils/figures --recursive --acl public-read
aws s3 cp report.html s3://$BUCKET/report-utils/report.html --acl public-read
