# SAMS Website

The SAMS website is built using the [Zola](https://www.getzola.org/) static site generator. This is relatively easy to use and quite flexible. It is built automatically upon pushes to the `main` branch, and deploys to [https://sams-project-uk.github.io](https://sams-project-uk.github.io).

## Cloning the repository

Due to the nature of the theme being present as a submodule, this repository should be cloned using `git clone --recursive`.

## Adding content

Textual content can be added by modifying the markdown files in the `/content` directory. The commands in the `Makefile` can be used to test the setup locally. By default, this uses a Docker configuration to source Zola, but if you have a local installation then the `LocalZola.config` setup can be used by adjusting the commented lines in the Makefile.
Using `make build` will then build the website for local viewing, and `make serve` will serve a copy of it accessible in your browser at `https://localhost:8080/`.

## Logo

The logo is generated to a vector SVG from `logo.tex` via a roundabout path that is included in the `Makefile`. This doesn't need to be regenerated unless you're changing the logo, and the github actions cloud builder does not have the necessary capability to do so.