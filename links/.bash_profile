# ---------------------------------------------------------------------
# Distro Specific Bash_profile stuff
# ---------------------------------------------------------------------
source ~/.bash_aliases
cat ~/.welcome
#---------------------------------------------------------------------
# Git aliases
# ---------------------------------------------------------------------
# general
alias gs='git status'
alias gfr='git fetch; git rebase;'
alias gf='git fetch'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grh='git reset --hard'
alias ggc='git gc'
# add
alias ga='git add'
alias gaa='git add -A .'
# commit
alias gc='git add -A; git commit -a;'
alias gcm='git commit -m'
# merge
alias gcp='git cherry-pick'
alias gm="git merge --no-ff"
# log
alias gl='git log --graph --abbrev-commit --decorate --date=relative --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(magenta)- %an%C(reset)%C(bold yellow)%d%C(reset)'"'"' --all'
alias gl2='git log --graph --abbrev-commit --decorate --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)%aD%C(reset) %C(dim green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(magenta)- %an%C(reset)'"'"' --all'
alias grl='git reflog;'
# submodule
alias gsi='git submodule init; git submodule update'
alias gsu='git submodule sync; git submodule update'
alias gss='git submodule sync'
# push
alias gp='git push'
alias gpod='git push origin dev;'
alias gpom='git push origin master;'
alias gpu='git push -u'
alias gpuo='git push -u origin'
alias gphdm='git push heroku dev:master'
alias gphm='git push heroku master'
alias gpldm='git push live dev:master'
alias gplm='git push live master'
alias gpum='git push userver master'
alias gpud='git push userver dev'
alias gpur='git push userver rc'
# branch
alias gch="git checkout"
alias gchb="git checkout -b"
alias gb="git branch"
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbod='git push origin --delete'
# stash
alias gsh='git stash'
alias gshp='git stash pop'
# tags
alias gpt='git push origin --tags'
alias gt='git tag'
alias gts='git tag show'
alias gta='git tag -a'
# diff
alias gd='git diff'
alias gdw='git diff -w'
alias gdc='git diff --cached'
#bisect
alias gbi="git bisect"
alias gbis="git bisect start"
alias gbib="git bisect bad"
alias gbig="git bisect good"
alias gbir="git bisect reset"
#Remote
alias gre="git remote"
alias grea="git remote add"
alias gres="git remote set-url"
alias greso="git remote set-url origin"
alias grer="git remote remove"
# ---------------------------------------------------------------------
# Other aliases
# ---------------------------------------------------------------------
alias sourcebash='source ~/.bash_profile'
alias ..='cd ..'
alias ...='cd ..; cd ..;'
alias ....='cd ..; cd ..;cd ..;'
alias la='ls -alsh'
alias ~="cd ~"
alias c='clear'
alias path='echo -e ${PATH//:/\\n}'
alias rmr='sudo rm -R'
alias composerinstall='composer install --prefer-dist'
alias reload='. ~/.bash_profile'
alias gitgud='echo "[ ] not rekt  [x] rekt"'
alias notes='vim ~/notes.MD'
alias todo='vim ~/todo.MD'
alias pu='phpunit'
alias ca='composer dumpautoload'
alias ci='composer install'
alias cu='composer update'
alias cr='composer require'
alias brails='bin/rails'
# ---------------------------------------------------------------------
# Directory aliases
# ---------------------------------------------------------------------
alias home='cd ~'
alias grasseh='cd ~/projects/grasseh.com'
alias desktop='cd ~/Desktop'
alias dotfiles='cd ~/dotfiles'
alias projects='cd ~/projects/'

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-COLORS=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

# ---------------------------------------------------------------------
# Prompt
# ---------------------------------------------------------------------
prompt_cmd () {
    LAST_STATUS=$?
    PS1="\n\[$CPRIMARY\]\A - "
    PS1+="\u@\h\[$CSECONDARY\]:"
    PS1+="\[$BOLD\]\[$CTERTIARY\]\w"
    PS1+="\[$RESET\]\[$GIT\] "
    if  [[ $(uname -a | grep "Ubuntu") ]]; then
        PS1+="$(__git_ps1)"
    fi
    if  [[ $(uname -a | grep "Linux") ]]; then
        PS1+="$(__git_ps1)"
    fi
    if  [[ $(uname -a | grep "Darwin") ]]; then
        PS1+="$(parse_git_branch)"
    fi
    PS1+=" \[$RESET\] "
}
PROMPT_COMMAND='prompt_cmd'
export CLICOLOR=1
export LSCOLORS=fxFxBxDxCxegedabagacad

# ---------------------------------------------------------------------
# Default Editor
# ---------------------------------------------------------------------
export EDITOR=/usr/bin/vim

# ---------------------------------------------------------------------
# Default Blocksize for ls etc.
# ---------------------------------------------------------------------
export BLOCKSIZE=1k

# ---------------------------------------------------------------------
# Misc
# ---------------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH