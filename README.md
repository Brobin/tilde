# Brobin’s ~/

This repository contains my Linux dotfiles, simple scripts aliases and other stuff that resides in my `~/` folder. I cherry-picked a lot of stuff from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and added some of my own. Check that repository out for more stuff and more detailed docs :)

Installation

```bash
git clone https://github.com/brobin/tilde
cd tilde
source tilde.sh
```

You should probably also fix the `.gitconfig` user section so you aren't me...

![](http://i.imgur.com/cDaboYy.png)

NOTE: Some of my aliases include some python scripts that require virtualenvs. To install the virtualenvs, run the following

```bash
virtualenv ~/py2venv
virtualenv -p python3 ~/py3venv
```
