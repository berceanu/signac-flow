# README

[![Anaconda-Server Badge](https://anaconda.org/glotzer/signac-flow/badges/version.svg)](https://anaconda.org/glotzer/signac-flow)
[![PyPi](https://img.shields.io/pypi/v/signac-flow.svg)](https://img.shields.io/pypi/v/signac-flow.svg)

## About

Workflow management based on the signac framework.

The signac-flow package provides the basic infrastructure to easily configure workflow for data operations on a signac workspace executed by a scheduler.

## Maintainers

  * Carl Simon Adorf (csadorf@umich.edu)
  * Paul Dodd (pdodd@umich.edu)

## Installation

The recommendend installation method for **signac-flow** is through **conda** or **pip**.
The software is tested for Python versions 3.3+ and is built for all major platforms.

This package is available via the Glotzer Group conda channel:

`conda install -c glotzer signac-flow`

or 

`pip install --user signac-flow`

## Documentation

The documentation for this package can be found online at [signac-flow.readthedocs.io](https://signac-flow.readthedocs.io/) or built manually using sphinx:
```
#!bash
cd doc
make html
```

## Update legacy projects for version 0.5:

Although legacy projects should be mostly supported via compatibility layers, it is generally recommended to update projects for version 0.5.
These are the steps required to update:

  1. Remove all status and submission related modules, these functions should now be provided by the `FlowProject.main()` interface.
  2. Consider interfacing with modules that implement operations via the `flow.run()` function.

Please note, if you don't want to update, we recommend to copy the source code of a working version directly into the project directory.
You should link the flow package into the project's root directoy, for example with the following command:
```
#!bash
$ cd my_project
$ git clone git@bitbucket.org:glotzer/signac-flow.git && git fetch && git checkout v0.4.2 && ln -s signac-flow/flow
```
