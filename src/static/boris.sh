#!/usr/bin/bash

# Run BORIS
# if not present install it before


if ! command -v uv &> /dev/null; then
    # install uv
    echo "Installing the uv Python package manager"
    wget -qO- https://astral.sh/uv/install.sh | sh
    . "$HOME/.local/bin/env"
else
    echo "The uv Python package manager is already installed"
    uv self update
fi    



if [ -d "$HOME/BORIS_program" ]; then
    cd $HOME/BORIS_program
    uv run boris-behav-obs
else


    uv version

    # installation of BORIS
    echo "Directory $HOME/BORIS_program does not exist."
    echo "Creating the $HOME/BORIS_program project and install BORIS"
    uv init --python 3.12 $HOME/BORIS_program
    cd $HOME/BORIS_program
    uv add boris-behav-obs

    uv run boris-behav-obs


fi


