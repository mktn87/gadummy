# PYTHON_VERSION=3.9.10
# POETRY_VERSION=1.1.13
# POETRY_HOME=/opt/poetry
include .env
# export

install_dev_deps:
	echo "POETRY_HOME INSIDE = ${POETRY_HOME}"
	curl -sSL https://install.python-poetry.org | python3 -
	export PATH="${POETRY_HOME}/bin:${PATH}"

install_deps:
	echo "POETRY_HOME INSIDE = ${POETRY_HOME}"
	echo "PATH INSIDE = ${PATH}"
	poetry install

lint:
	env | sort
	poetry run isort . --check-only
	poetry run flake8

test:
	env | sort
	poetry run python tests.py