include .env
export

install_dev_deps:
	echo "POETRY_HOME INSIDE = ${POETRY_HOME}"
	curl -sSL https://install.python-poetry.org | python3 -
	export PATH="${POETRY_HOME}/bin:${PATH}"

install_deps:
	echo "POETRY_HOME INSIDE = ${POETRY_HOME}"
	poetry install

lint:
	env | sort
	poetry run isort . --check-only
	poetry run flake8

test:
	env | sort
	poetry run python tests.py