# Mach 30 Distributed OSHW Framework Workspace (Kasm Image)

![Screenshot from 2023-06-09 15-21-34](https://github.com/Mach30/kasm-dof-workspace/assets/14095576/f1dce491-614c-4c30-ae0d-756c33f1f31a)

## Introduction

This repo provides a workspace for Mach 30 volunteers to work on [Mach 30 Modeling Language](https://github.com/Mach30/m30ml), [Mach 30 Project Manager](https://github.com/Mach30/m30mlTools), the [Distributed OSHW Framework (DOF)](https://github.com/Mach30/dof), and [Sliderule](https://github.com/Mach30/sliderule) based on the [Ansible based template for KASM Ubuntu Noble Images](https://hub.docker.com/r/kasmweb/core-ubuntu-noble) template provided by @j-simmons-phd.  The workspace is configured with the following software:

- Node JS Tools
    - nodejs v23.8.0
    - npm v10.9.2 (included with nodejs)
    - npx v10.9.2 (included with nodejs)
    - yarn v4.3.1
    - oclif v4.17.32
    - m30pm v0.1.0
    - markedpp v2.0.1
- Utilities
    - git with @capsulecorplab .gitconfig
    - [gradle v8.7](https://docs.gradle.org/8.7/release-notes.html)
    - [Keychain](https://www.funtoo.org/Keychain) v2.8.5
    - Vim (pre-installed) with @capsulecorplab [vimrc](https://gist.github.com/capsulecorplab/495058e7a57ed8adaed3c40c80d09739#file-vimrc)
    - [yamllint](https://github.com/adrienverge/yamllint) v1.31.0
    - [tree](https://github.com/j-simmons-phd/kasm-core-focal-template)
    - [jtex](https://mystmd.org/jtex)
- Python Based Tools
    - python3-venv
    - python3-pip
    - Jupyter Lab
    - Juptyer Notebook
    - Voila
    - Pint
    - LinkML v1.8.7
    - Poetry (latest)
    - [mystmd](https://mystmd.org/)
    - [cookiecutter](https://github.com/cookiecutter/cookiecutter)
- Artifact Generators
    - [Pandoc](https://pandoc.org/) v2.18
    - [TeX Live](https://www.tug.org/texlive/) v2019 to enable PDF support in Pandoc
    - [yq](https://mikefarah.gitbook.io/yq/) v4.33.2
    - [PlantUML](https://plantuml.com/)
        - JDK v11
        - Graphviz 2.50 (built from source)
    - [AsciiDoctor](https://asciidoctor.org/) v2.0.18 with PlantUML and PDF support
- VS Code v1.77.3 with the following extensions
    - [YAML Language Support by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
    - [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
    - [AsciiDoc support for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=asciidoctor.asciidoctor-vscode)
    - [Dendron](https://marketplace.visualstudio.com/items?itemName=dendron.dendron)
    - [Gradle for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle)
    - [Better Nunjucks](https://marketplace.visualstudio.com/items?itemName=ginfuru.better-nunjucks)
    - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
- Knowledge Capture Tools
  - [JabRef](https://www.jabref.org/) v5.5.6
- [Pharo](https://pharo.org/)
- Content Viewers
    - Chrome
    - Firefox
    - [Evince Document Reader](https://wiki.gnome.org/Apps/Evince)

## A Note on Licensing

This repo includes code and packages from a number of outside sources (including [Kasm Workspaces](https://www.kasmweb.com/)).  The project license file only covers code written by the project author and contributors.  All other code is subject to its authors' terms and conditions.

## How to Use this Repo

1. Download and unzip the latest release
1. Open the unzipped release folder in the command line 
1. Run `docker-compose pull` to download the image

## Using the image locally

Once built, the image can be pushed into the Kasm server per Kasm documentation or it can be run locally on port 6901 using docker-compose.

- **Starting the image locally:** Run `docker-compose up -d`
- **Stopping the image locally:** Run `docker-compose down`

When running locally, the workspace can be accessed at https://localhost:6901 with
- **User:** `kasm_user`
- **Passwordd:** `password`
