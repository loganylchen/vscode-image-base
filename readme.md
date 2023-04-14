# vscode-image-base

|Label|Badge|
|:---:|:---:|
|Docker Image|![Docker Image Version (latest by date)](https://img.shields.io/docker/v/btrspg/vscode-base?sort=date)|
|Github Action| [![image build for vscode base](https://github.com/loganylchen/vscode-image-base/actions/workflows/build.yaml/badge.svg?branch=master)](https://github.com/loganylchen/vscode-image-base/actions/workflows/build.yaml)|


Most of the time, I needed an independent environment for different projects. This image could provide a basic image for other images to build on.

# Versions


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
