# Brobin’s ~/

This repository contains my Linux dotfiles, simple scripts aliases and other stuff (wallpapers etc.) that resides in my `~/` folder. I borrowed a lot of stuff from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and added some of my own. Check that repository out for even more stuff (especially for OSX) :)

Installation

```bash
git clone https://github.com/brobin/tilde
cd tilde
source tilde.sh
```

You should probably also fix the `.gitconfig` user section so you aren't me...

![](Pictures/terminal.png)

NOTE: Some of my aliases include some python scripts that require virtualenvs. To install the virtualenvs, run the following

```bash
virtualenv ~/py2venv
virtualenv -p python3 ~/py3venv
```
