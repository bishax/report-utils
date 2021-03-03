report-utils
==============================

Exploratory project for defining a technical report writing workflow.

## Setup

To configure git and build the environment simply run `make install`.

## Example report

Source file: `output/report.md`


Run `make report` to generate `output/report.pdf`


Run `make report_html` to generate `output/report.html`


To view the HTML report run `sh bin/report_server.sh` and go to [localhost:8080/output/report.html](localhost:8080/output/report.html) in your browser.


Run `make report_s3` to generate `output/report.html` and upload it to s3 [here](https://nesta-test.s3.eu-west-2.amazonaws.com/report-utils/report.html).


## Weekly review slides

Source file: `output/slides.md`

Run `sh bin/slide_setup.sh && sh bin/make_slides.sh && sh bin/report_server.sh` to make the slides and go to [localhost:8080/output/myslides.html](localhost:8080/output/myslides.html) in your browser.


## Collaborative editing and review with Hackmd

Install one of the hackmd browser extensions:

[Chrome](https://chrome.google.com/webstore/detail/hackmd-it/cnephjboabhkldgfpdokefccdofncdjh)

[Firefox](https://addons.mozilla.org/en-US/firefox/addon/hackmd-it/?src=search)

Then go to [the report file on github](https://github.com/bishax/report-utils/blob/dev/output/report.md) and click on the "Edit on HackMD" button.

You can then share the URL with colleagues for collaborative editing and/or review, and then commit the changes back to github.

--------

<p><small>Project based on the <a target="_blank" href="https://github.com/nestauk/cookiecutter-data-science-nesta">Nesta cookiecutter data science project template</a>.</small></p>
