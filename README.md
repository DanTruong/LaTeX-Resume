### Intro

A single-page, one-column resume for software developers. It uses the base latex templates and fonts to provide ease of use and installation when trying to update the resume. The different sections are clearly documented and custom commands are used to provide consistent formatting. The three main sections in the resume are education, experience, and projects. This project is a fork of [sb2nov's LaTeX resume project](https://github.com/sb2nov/resume).

### Build locally with Docker

If you would like to play around with this Resume and use it for your own purposes, you can do so with Docker. Open a Powershell terminal and CD to the directory that contains the source files. Then run the following commands:

```sh
# Build the Docker image that will run the source files
docker build -t resume-builder .

# Run the newly-built image
docker run --rm -v ${PWD}:/data resume-builder

```


