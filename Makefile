POETRY_HOME=/opt/poetry
POETRY_VERSION=1.1.13

install_dev_deps:
	@echo "POETRY_HOME INSIDE = ${POETRY_HOME}"
	curl -sSL https://install.python-poetry.org | python3 -
	export PATH="${POETRY_HOME}/bin:${PATH}"

install_deps:
	@poetry install

lint:
	poetry run isort . --check-only
	poetry run flake8

test:
	poetry run python tests.py