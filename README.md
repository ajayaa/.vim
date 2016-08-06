# .vim #


## Reproducible vim environment ##

This repo is a copy of my vim environment. I clone this repo in remote machines and make life easier.
To use this:
* Clone this repo: git clone https://github.com/ajayaa/.vim
* Execute init inside .vim directory.

## To remove a plugin ##

* Delete the relevant section from the .gitmodules file.
* Stage the .gitmodules changes git add .gitmodules
* Delete the relevant section from .git/config.
* Run git rm --cached path_to_submodule (no trailing slash).
* Run rm -rf .git/modules/path_to_submodule
* Commit git commit -m "Removed submodule <name>"
* Delete the now untracked submodule files
* rm -rf path_to_submodule
