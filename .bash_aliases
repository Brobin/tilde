
alias tilde="source ~/projects/tilde/tilde.sh"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias q='exit'

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias p="cd ~/projects"
alias g="git"
alias h="history"
alias j="jobs"

colorflag="--color"

# Becuase you do this all the time
alias sl="ls"

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# virtualenv
alias py2venv='source $HOME/py2venv/bin/activate'
alias py3venv='source $HOME/py3venv/bin/activate'
alias py2='py2venv'
alias py3='py3venv'

# python scripts
alias server="py2venv && python -m SimpleHTTPServer"
alias r2='py2venv && python $HOME/scripts/r2.py'
alias weather='py2venv && python $HOME/scripts/weather.py'
alias c='py2venv && python $HOME/scripts/temperature.py c'
alias f='py2venv && python $HOME/scripts/temperature.py f'

# django stuff
alias pmp='python manage.py'
alias runserver='python manage.py runserver'
alias migrate='python manage.py makemigrations && python manage.py migrate'
alias pytest='python manage.py test'

# just do it
alias fuck='sudo $(history -p !!)'

alias colors='bash $HOME/scripts/show_colors.sh'
