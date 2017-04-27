# Continuous deployment with Terraform
This repository contains the files and excercises needed to participate in the workshop "Continuous deployment with Terraform".

**Welcome!**
The goal of the workshop is to build a continuous deployment pipeline around an example Fastly config. Combining Fastly’s 5-second deploys, API control, and some open-source tooling (Travis, Terraform) attendees will contribute live changes and see their results in the demo.

## Prerequisites
- Have a GitHub account
- Have a machine with a terminal prompt, `Make` and `Ruby` installed

## Install:
- Fork the GitHub repo: [https://github.com/fastly/altitude-nyc-abcd-workshop](https://github.com/fastly/altitude-nyc-abcd-workshop)
- Clone the repo to a local directory on your machine:
    - Via SSH: `git clone git@github.com:<USERNAME>/altitude-nyc-abcd-workshop.git`
    - Via HTTP: `git clone https://github.com/<USERNAME>/altitude-nyc-abcd-workshop.git`
- Change directory into the repo: `cd altitude-nyc-abcd-workshop`
- Install the dependencies `make install`
    - This will install the Terraform binary to your `$HOME` directory and link your `$PATH`. Permission may be required.
    -  If you already have [Terraform](https://www.terraform.io/downloads.html) and the [Travis gem](https://github.com/travis-ci/travis.rb#installation) installed on your machine or would prefer to install manually, skip this step.
- You're good to go!

## Exercises:
To start, follow the tasks in the `exercises` directory:

1. [Define a Fastly service with Terraform](exercises/1.md)
2. [Configure continuous deployment with Travis](exercises/2.md)
