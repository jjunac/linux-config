#############################
### MISC
#############################

alias l='ls -lac'
alias lh='ls -lach'
alias h='history 0 | grep '
alias c="clear"
alias q="exit"
alias \\q="\\exit"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# When you hit ctrl+z on tmux
alias aled="fg"


#############################
### GIT
#############################

alias gitalias='alias | grep "git " | grep '
alias g!='git init' 
alias g.='git add .'
alias ga='git add'
alias gau='git add -u'
alias gaa='git add --all'
alias gb='git branch'
alias gbn='git checkout -b'
alias gblame='git blame'
alias gcl='git clone'
alias gclr='git clone --recursive'
alias gc='git commit'
alias gca='git commit --amend'
alias gca-date='GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcot='git checkout --track'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdi='git diff --ignore-space-change'
alias gds='git diff --staged'
alias gf='git fetch'
alias gign='cat >> .gitignore'
alias gl="git log --pretty=format:'%Cred%h%Creset %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --color=always | head -n 20"
alias gla="git log --pretty=format:'%Cred%h%Creset %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --color=always --all | head -n 20"
alias gll="git log --pretty=format:'%Cred%h%Creset %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glgg='git log --graph --pretty=short --decorate'
alias glgga='git log --graph --pretty=short --decorate --all'
alias gph='git push'
alias gphf='git push -f'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gr='git remote'
alias grsu='git remote set-url origin'
alias grmc='git rm --cached'
alias grst='git reset'
alias grvt='git revert'
alias gm='git merge'
alias gs='git status'
alias gsh='git stash'
alias gshm='git stash -m'
alias gsha='git stash apply'
alias gshc='git stash clear'
alias gshd='git stash drop'
alias gshl='git stash list'
alias gshp='git stash pop'
alias gsm='git submodule'
alias gsma='git submodule add'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gsmui='git submodule update --init'


#############################
### MERCURIAL
#############################

alias hgalias='alias | grep "hg "'
alias h.='hg add .'
alias ha='hg add'
alias har='hg addremove'
alias hc='hg commit -m'
alias hca='hg commit --amend'
alias hd='hg diff'
alias hh='hg heads'
alias hin='hg in'
alias hl='hg log -l 20'
alias hlf='hg log'
alias hlgg='hg glog | more'
alias hn='hg nominate'
alias hout='hg out'
alias hpl='hg pull'
alias hplu='hg pull -u'
alias hrr='hg revert -r'
alias hrs='hg resolve'
alias hrsl='hg resolve -l'
alias hrsm='hg resolve -m '
alias hs='hg status'
alias hsh='hg shelve'
alias hshl='hg shelve --list'
alias hu='hg update'
alias hush='hg unshelve'
alias hur='hg update -r'


