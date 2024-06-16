# Tools

This is a list of libraries, packages or modules that I learnt about as part of this project. They're organised by categories. 

## Python project organisation

* [Make](https://www.gnu.org/software/make/) - Using custom commands defined in a Makefile can simplify and automate repetitive tasks in your project. We use it to build and update the virtual environment and to reformat files to PEP8 style. On Windows, need to install `make` first: [Install `make` using `choco`](https://community.chocolatey.org/packages/make).
* [Shields.is](https://shields.io/) - This is where repositories get all their badges from. 
* [Cookiecutter - data science](https://cookiecutter-data-science.drivendata.org/) - Makes it easy to create a folder and file structure for data science projects. They also have a lot of useful general [advice for managing data science projects](https://cookiecutter-data-science.drivendata.org/opinions/) including using .gitignore, virtual environments and managing secrets. 
* [Mkdocs](https://www.mkdocs.org/) - This seems to be the preferred way of managing project documentation. It was also recommended by the Lead Data Scientist at Lloyds Banking Group at the [Data Science Festival in London in May 2024](https://datasciencefestival.com/session/mlops-in-financial-services/). Open-source and free. The "Wiki" feature on GitHub is paid and README.md documents don't support multiple pages. 
* [pyproject.toml](https://packaging.python.org/en/latest/guides/writing-pyproject-toml/) - This is a configuration file used when you want to create a new Python package (e.g. pypi package). Here, we're using it to configure code formatters (`isort` and `black`). 

## Code formatting 

* `flake8` - Flake8 lints the code for errors, style violations, and complexity issues. It reports issues but it doesn't update the files. It has many customization options. ([Read more](https://flake8.pycqa.org/en/latest/))
* `black` - Black is an opinionated code formatter for Python. Its primary goal is to enforce a consistent coding style across the entire codebase, reducing the need for debates about formatting in code reviews. It makes changes to the code to enforce a standard. It has few customization options. ([Read more](https://black.readthedocs.io/en/stable/index.html))
* `isort` - Groups and sorts Python imports so that you don't have to. 
