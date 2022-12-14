# LaTeX Docker Container running a full TeX Live System installed in Ubuntu 20.04

> Just compile latex and don't waste time installing stuff.

## Build

- Clone this repository: `git clone https://github.com/iphoneintosh/latex-docker.git && cd latex-docker`
- Build the Docker image: `docker build -t latex-docker .`
  - Since the full TeX Live repo is installed, this may take a while.

Alternatively, you can use the pre-build image from [Docker Hub](https://hub.docker.com/repository/docker/iphoneintosh/latex-docker).
To use this image, simply replace `latex-docker` with `iphoneintosh/latex-docker:latest` in the run commands below.

## Run

- Run pdflatex: `docker run --rm -v <PROJECT_FOLDER>:/data latex-docker pdflatex -shell-escape <TEX_FILE>`
- Run bibtex: `docker run --rm -v <PROJECT_FOLDER>:/data latex-docker bibtex <TEX_FILE>`
- Run biber: `docker run --rm -v <PROJECT_FOLDER>:/data latex-docker biber <TEX_FILE>`
- Run latexdiff-vs: `docker run --rm -v <PROJECT_FOLDER>:/data latex-docker latexdiff-vc --flatten -r <GIT_COMMIT_HASH> <TEX_FILE>`

There are many more latex commands. Just run them in the Docker container and you should be good to go.
