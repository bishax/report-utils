---
author: Alex Bishop
title: Report wars - a new hope?
date: 3rd March 2021
---

Context
---

For the mapping the impact of Covid in Scotland project we tried a different approach to report writing.

It evolved naturally (i.e. there are rough edges) but seemed promising so we decided to talk about it today.


# Problem statement (as I see it)


## We want to produce:

- Feature-level reports
  - Internally facing
  - Assists with data-science review
  - Helps with writing final report
  - Good for posterity
- Project-level reports
  - Externally facing
  - Direct deliverable
- Slide decks?
  - Present to: Practice / Mission teams / Externals
  - Avoid profileration of multiple decks throughout a project that end up out of sync
  - FYI: This presentation is generated from a simple markdown file!

## These reports should:

- Be available in multiple formats from a single source file, particularly HTML and PDF
- Enable collaboration
- Enable exploration
- Be easy to write
- Be extensible
- Look good
- Stay in sync with projec outputs, e.g. figures
- Be version controlled in some way

# Approach we took

## In short...

- Write the report in Markdown
- Use [pandoc](https://pandoc.org/) to produce both a PDF (via. LaTeX) and HTML output

## How does that work?

DEMO TIME

## What was missing

- Github rendering
  - depends on paths
  - don't get citations for example
- Altair figure syntax should be simplified to be more ergonomic
  - Extra: this would also render images statically on the GH markdown preview
- PR review works ok for review but no way to suggest/accept simple changes
  - [Hack.md](hackmd.io)?
- Collaborative writing
  - [Hack.md](hackmd.io)?
- Pizzaz
  - Can customise base HTML and tex templates to add a nice visual style


# What next?

What do you currently use?
---

Latex/overlead/GSuite/MS office? What others?

What about when you need something online? Nesta blog CRM?


Would you use a more polished version of this instead?
---

If not:

- What would you suggest instead?
- What is missing that would make you use it?

If yes or no:

- What features do you need
