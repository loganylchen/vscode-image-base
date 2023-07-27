# vscode-image-base

|Label|Badge|
|:---:|:---:|
|Docker Image|![Docker Image Version (latest by date)](https://img.shields.io/docker/v/btrspg/vscode-base?sort=date)|
|Github Action| [![image build for vscode base](https://github.com/loganylchen/vscode-image-base/actions/workflows/build.yaml/badge.svg?branch=master)](https://github.com/loganylchen/vscode-image-base/actions/workflows/build.yaml)|


Most of the time, I needed an independent environment for different projects. This image could provide a basic image for other images to build on.

# Versions

## v0.0.3

- link the python3 to python, so we could call python directly to use python3 in the environment.
- Upgrade R from lower version to the latest version (4.3.3)
- Change the language settings. So there will not be warnings below:
```
1: Setting LC_CTYPE failed, using "C"
2: Setting LC_COLLATE failed, using "C"
3: Setting LC_TIME failed, using "C"
4: Setting LC_MESSAGES failed, using "C"
5: Setting LC_MONETARY failed, using "C"
6: Setting LC_PAPER failed, using "C"
7: Setting LC_MEASUREMENT failed, using "C"
```

## v0.0.2

### Added

#### Python

- jupyter==1.0.0 
- ipykernel==6.22.0

#### R

- BiocManager
- devtools
- languageserver
- IRkernel

## v0.0.1

The initial image
