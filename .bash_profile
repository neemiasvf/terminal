# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Function to show current git branch on terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Enabling colors on terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[1;31m\]\$(parse_git_branch)\$(~/.rvm/bin/rvm-prompt g)\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Setting PATH for RVM and system’s directories
# export PATH=$HOME/.rvm/gems/ruby-2.3.1/bin:$HOME/.rvm/rubies/ruby-2.3.1/bin:$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
# export PATH=$HOME/.rvm/gems/ruby-2.3.3/bin:$HOME/.rvm/gems/ruby-2.3.3@global/bin:$HOME/.rvm/rubies/ruby-2.3.3/bin:$HOME/.rvm/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export PATH=$HOME/.rvm/gems/ruby-2.3.4/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/sbin:$PATH
export MANPATH=/home/linuxbrew/.linuxbrew/share/man:$MANPATH
export INFOPATH=/home/linuxbrew/.linuxbrew/share/info:$INFOPATH

# Set $EDITOR
export EDITOR=nano

## Alias definitions
# GitHub
alias gcl='git clone'
alias gs='git status'
alias gl='git log'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gca='git checkout -a'
alias gcs='git checkout staging'
alias gcn='git checkout neemias'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gf='git fetch'
alias ga='git add'
alias ga.='git add .'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gps='git push'
alias gpl='git pull'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gsa='git stash apply'
alias gsc='git stash clear'
alias gsl='git stash list'
alias grh='git reset HEAD~1'
alias hsd='hack && ship && dwf'
alias killmergedlocalbranches='git branch --merged | grep -v \* | xargs git branch -D'
alias killalllocalbranches='git branch | grep -v \* | xargs git branch -D'

# RVM
alias installrvm='\curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew --ignore-dotfiles --version latest'
alias ru='rvm use'
alias rud='rvm use default'
alias rug='rvm use @global'
alias ruc='rvm use @coursera'
alias ruwp='rvm use @web-programming'
alias ruwpp3='rvm use @web-programming-p3'
alias ruper='rvm use @per'
alias rur='rvm use @residuos'
alias ri='rvm install'
alias rl='rvm list'
alias rgl='rvm gemset list'
alias gel='gem list'
alias guc='gem update && gem cleanup'
alias rvmautolibs='rvm autolibs enable && rvm autolibs packages && rvm autolibs homebrew'
alias rvmupcl='rvm get stable && rvm cleanup all'
alias updaterubygems='rug && guc && gem install bundler && gem install rubygems-update && gem update --system'

# Rails
alias rdrop='rake db:drop'
alias rdropp='rake parallel:drop'
alias rcreate='rake db:create'
alias rcreatep='rake parallel:create'
alias rsetup='rake db:setup'
alias rsetupp='rake parallel:setup'
alias rmigrate='rake db:migrate'
alias rmigratep='rake parallel:migrate'
alias rprepare='rake db:test:prepare'
alias rpreparep='rake parallel:prepare'
alias rseed='rake db:seed'
alias rreset='rake db:migrate:reset'
alias rresetp='rdropp && rcreatep && rmigratep && rpreparep'
alias reseed='rreset && rseed && rprepare'
alias reseedp='rmigratep && rseedp && rresetp'
alias rs='rails server'
alias rc='rails console'
alias rcs='rails console --sandbox'
alias test='rspec && cucumber'
alias testp='rake parallel:spec && rake parallel:features'

# Wine
alias idm='wine ~/.wine/drive_c/Program\ Files/Internet\ Download\ Manager/IDMan.exe'

# Other
alias nbp='nano .bash_profile'
alias buuc='brew update && brew upgrade && brew cleanup && brew cask cleanup'
alias loginimac='ssh Neemias@imac.neemiasvf.me'
alias loginaws='chmod 400 ~/Documents/ssh_keys/me.neemiasvf.server && ssh -i ~/Documents/ssh_keys/me.neemiasvf.server neemiasvf@aws.neemiasvf.me'
alias logins='chmod 400 ~/Documents/ssh_keys/me.neemiasvf.server && ssh -i ~/Documents/ssh_keys/me.neemiasvf.server neemiasvf@server.neemiasvf.me'
alias res='cd ~/github/residuos'
alias web='cd ~/github/web-programming'
alias webp3='cd ~/github/web-programming-p3'
alias pooa='cd ~/github/pooa'
alias per='cd ~/github/per'
alias lsa='ls -a'
alias lsla='ls -la'
alias rubymine='cd $HOME/Applications/RubyMine-2016.1.1/bin && ./rubymine.sh'
alias updateubuntu='sudo apt update && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias createdbuser='sudo -u postgres createuser -s'
alias gopsql='sudo -u postgres psql'  # \password
alias sshbash='ssh-agent bash'
alias addssh='ssh-add ~/.ssh/id_rsa'
alias resetglr='sudo gitlab-runner uninstall && cd ~/gitlab-runner && sudo gitlab-runner install -u neemiasvf && sudo gitlab-runner start'
alias rlw='rm /Library/Caches/com.apple.desktop.admin.png'
