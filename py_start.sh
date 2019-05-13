#!/usr/bin/env bash
# A quick and dirty script to setup a workspace
# . ./py_start.sh new <new-repo-name>
# . ./py_start.sh <github-url>

VIR_ENV_DIR="env"
PARTING_MSG="Run the following commands to complete setup:"

# Create repo
if [ $1 = "new" ]; then
    BASE_INPUT="$2"
    echo -e "\nCreating new git repo ${2}..."
    git init $2
else
    BASE_INPUT="$1"
    echo -e "\nInitializing git clone ${1}..."
    git clone $1
fi

# Enter repo as working directory
base_name=$(basename $BASE_INPUT)
folder_name=${base_name%.*}
echo -e "\nChanging directory to ${folder_name}..."
cd $folder_name
echo -e "\n"

# Create virtual environment
if [ -d "$VIR_ENV_DIR" ]; then
    echo "There's already a virtual environment here"
else
    echo "No env directory here, creating a virtual environment..."
    python3 -m venv env
    echo "Created virtual environment."
fi

# Create gitignore (if nec) and add virtual environment
echo -e ".gitignore\nenv/" >> .gitignore
echo "Added virtual environment directory to gitignore"

# Echo next steps in terminal
PARTING_MSG+="\nactivate"
PARTING_MSG+="\npip install -r requirements.txt"
echo -e "\n\n${PARTING_MSG}"

# Why does this line have to be last?
# Read a bunch of SO, still don't understand exec
exec bash
