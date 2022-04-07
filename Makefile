# PYTHON_VERSION=3.9.10
# POETRY_VERSION=1.1.13
# POETRY_HOME=/opt/poetry
include .env
# export

install_requisites:
	curl -sSL https://install.python-poetry.org | python3 -
	export PATH="${POETRY_HOME}/bin:${PATH}"

install_deps:
	poetry install --no-root ${INSTALL_DEPS_ARGS}

lint:
	poetry run isort . --check-only
	poetry run flake8

test:
	poetry run python tests.py