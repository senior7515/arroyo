.PHONY: install lint setup-git tests

setup-git:
	pip install pre-commit==2.13.0
	pre-commit install --install-hooks

install:
	pip install -e .
	pip install -r requirements-test.txt

lint:
	mypy . --strict

tests:
	pytest -vv
