all: venv requirements dev-requirements

requirements: requirements.txt

dev-requirements: requirements-dev.txt

./venv:
	/usr/bin/env python -m venv venv

./requirements-dev.txt: ./pyproject.toml
	poetry export -f requirements.txt -o requirements-dev.txt --dev

./requirements.txt: ./pyproject.toml
	poetry export -f requirements.txt -o requirements.txt
