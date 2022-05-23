# .vim #


## Reproducible vim environment ##

This repo is a copy of my vim environment. I clone this repo in remote machines and make life easier.
To use this:
* Clone this repo: git clone https://github.com/ajayaa/.vim
* Execute init inside .vim directory.

## To remove a plugin ##

* git rm bundle/{module_name}
* Make a commit

## To add a plugin ##
destination_folder == bundle/<submodule_name>
* git submodule add <remote_url> <destination_folder>
* rm -rf .git/modules/bundle/<submodule_name>

## Update all the plugins ##
* git submodule foreach git pull origin master 
