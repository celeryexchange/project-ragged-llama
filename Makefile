#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = ragged-llama
PYTHON_VERSION = 3.10
PYTHON_INTERPRETER = python

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Set up Python environment [conda]
.PHONY: create_environment
create_environment:
	conda env create --name $(PROJECT_NAME) -f environment.yml

## Update Python dependencies [conda]
.PHONY: update_environment
update_environment:
	conda env update --name $(PROJECT_NAME) --file environment.yml --prune
	
## Lint using flake8 and black (use `make format` to do formatting)
.PHONY: lint
lint:
	flake8 ragged_llama
	isort --check --diff --profile black ragged_llama
	black --check --config pyproject.toml ragged_llama

## Format source code with black
.PHONY: format
format:
	black --config pyproject.toml ragged_llama

## Update project documentation and deploy it to GitHub
.PHONY: update_documentation
update_documentation:
	mkdocs build
	mkdocs gh-deploy

## Delete all compiled Python files
.PHONY: clean
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete


#################################################################################
# PROJECT RULES                                                                 #
#################################################################################



#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys; \
lines = '\n'.join([line for line in sys.stdin]); \
matches = re.findall(r'\n## (.*)\n[\s\S]+?\n([a-zA-Z_-]+):', lines); \
print('Available rules:\n'); \
print('\n'.join(['{:25}{}'.format(*reversed(match)) for match in matches]))
endef
export PRINT_HELP_PYSCRIPT

help:
	@python -c "${PRINT_HELP_PYSCRIPT}" < $(MAKEFILE_LIST)
