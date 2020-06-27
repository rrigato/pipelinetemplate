[![made-with-cookiecutter](https://img.shields.io/badge/Made%20with-cookiecutter-blue.svg)](https://github.com/cookiecutter/cookiecutter) ![Python 3.7](https://img.shields.io/badge/python-3.7-blue.svg) 

# pipelinetemplate
cookiecutter template for initializing an AWS CodePipeline project.

Why was this template built? 

I found myself copy and pasting my ci/cd
pipeline yaml definition and build definition whenever I started a new project.I figured it would be easier to have a cookiecutter template that I can pull whenever I wanted a basic Code Pipeline with a dev/prod setup.

## table_of_contents
- [pipelinetemplate](#pipelinetemplate)
  - [table_of_contents](#table_of_contents)
    - [how_to_pull](#how_to_pull)
    - [cookiecutter_parameters](#cookiecutter_parameters)


### how_to_pull

```
pip install cookiecutter

cookiecutter https://github.com/rrigato/pipelinetemplate.git
```

### cookiecutter_parameters

- project_name = Name of project in all lower case. Ex: projectname
- project_description = Describe the application use case