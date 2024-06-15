# Project Ragged Llama

<a target="_blank" href="https://cookiecutter-data-science.drivendata.org/">
    <img src="https://img.shields.io/badge/CCDS-Project%20template-328F97?logo=cookiecutter" />
</a>

Corporate wiki chatbot implementation of a RAG-based LLM.

## Project Organization

```
├── LICENSE            <- Open-source license if one is chosen
├── Makefile           <- Makefile with convenience commands like `make create_environment` or `make format`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default mkdocs project; see mkdocs.org for details
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── pyproject.toml     <- Project configuration file with package metadata for the project
│                         and configuration for tools like black
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── environment.yml    <- The requirements file for reproducing the virtual environment, e.g.
│                         generated with `conda env create -f environment.yml`
│
├── setup.cfg          <- Configuration file for flake8
│
└── ragged_llama       <- Source code for use in this project.
    │
    ├── __init__.py    <- Makes ragged_llama a Python module
    │
    ├── data           <- Scripts to download or generate data
    │   └── make_dataset.py
    │
    └── features       <- Scripts to turn raw data into features for modeling
        └── build_features.py
    

    

```

--------

