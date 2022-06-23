PY?=python3
PIP?=pip3

install:
	bash scripts/install.sh

flake8:
	flake8 .


.PHONY: install flake8
