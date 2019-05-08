### What a Python virtual environment is

It's a Python bubble I can create on my machine. 
It gives me a blank slate to start with as far as packages are concerned 
and lets me keep them separate from the rest of my computer (including other projects.) 

### Why I use it
That way in my projects I can use different versions of the same packages. 
It also makes it easy to create dependency lists and install dependencies when I want to install other people's projects.

### How I use it

##### Which tool?
If I'm on Python3, I use venv. If I were on Python2, I'd use virtualenv. 
I'm under the impression pyvenv is a wrapper around venv and is no longer encouraged.

Basically, the Python devs built venv as part of the standard library with the intention of replacing virtualenv.

##### Create a virtual environment for a project
    >> mkdir project_dir     # make a directory for my new project
    >> cd project_dir        # navigate into that directory
    >> python3 -m venv env   # create a directory called env and put a virtual Python installation in it
Then create a git repo and add the newly created env directory to .gitignore
    
##### Working in the virtual environment
    >> source env/bin/activate     # turn it on when I'm going to work on the project
    >> pip install django          # download packages one at a time
    >> pip install -r requirements.txt    # alternatively, use this to download 
                                          # all requirements for a project at once
                                          # after you've saved the txt file
    >> deactivate                  # turn it off when I'm done working on the project
