##@ Formatters

format-black: ## run black (code formatter)
	@black -S ./src ./tests

format-isort: ## run isort (imports formatter)
	@isort ./src ./tests

format: format-black format-isort ## run all formatters

##@ Linters

lint-black: ## run black in linting mode
	@black -S ./src ./tests --check

lint-isort: ## run isort in linting mode
	@isort ./src ./tests --check

lint-flake8: ## run flake8 (code linter)
	@flake8 ./src ./tests

lint-mypy: ## run mypy (static-type checker)
	@mypy ./src ./tests

lint-pylint: ## run pylint (static code analyse)
	@pylint src tests

lint: lint-black lint-isort lint-flake8 lint-mypy lint-pylint ## run all linters

##@ Unit test

test:
	@pytest

all: format lint test
