ZOLA_PORT = 8080

include MakeConfigs/DockerZola.config
# include MakeConfigs/LocalZola.config

build:
	$(ZOLA_BUILD_COMMAND)

serve:
	$(ZOLA_SERVE_COMMAND)

logo:
	latexmk -shell-escape -pdf logo.tex
	mv logo.svg static/logo.svg
	rm logo.pdf
	latexmk -c logo.tex

