# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

alias es='exec "$SHELL"'

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# Hash sum calculations
alias md5sum='gmd5sum'
alias sha1sum='gsha1sum'
alias sha256sum='gsha256sum'

# Check external IP
alias whats-my-ip="curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'"

# Start Ruby httpd server in local environment
alias serve-ruby="ruby -run -e httpd . -p 5000"

alias octal="stat -f '%A %N' *"

alias fuck='$(thefuck $(fc -ln -1))'

# radare2 help
alias r2help="r2 -q -c '?*~...' -"

# packetfu shell startup
alias pktfu='rvmsudo ruby /home/badrobot/code/ruby/packetfu/examples/packetfu-shell.rb'

# radare2 startup alias
#alias r2="r2 -2 -N -e scr.color=1"
# aliases for iaito
alias r2='flatpak run --command=r2 org.radare.iaito'
alias r2agent='flatpak run --command=r2agent org.radare.iaito'
alias r2p='flatpak run --command=r2p org.radare.iaito'
alias r2pm='flatpak run --command=r2pm --share=network --devel org.radare.iaito'
alias r2r='flatpak run --command=r2r org.radare.iaito'
alias rabin2='flatpak run --command=rabin2 org.radare.iaito'
alias radare2='flatpak run --command=radare2 org.radare.iaito'
alias radiff2='flatpak run --command=radiff2 org.radare.iaito'
alias rafind2='flatpak run --command=rafind2 org.radare.iaito'
alias ragg2='flatpak run --command=ragg2 org.radare.iaito'
alias rahash2='flatpak run --command=rahash2 org.radare.iaito'
alias rarun2='flatpak run --command=rarun2 org.radare.iaito'
alias rasign2='flatpak run --command=rasign2 org.radare.iaito'
alias rasm2='flatpak run --command=rasm2 org.radare.iaito'
alias ravc2='flatpak run --command=ravc2 org.radare.iaito'
alias rax2='flatpak run --command=rax2 org.radare.iaito'
# rizin startup alias
alias rz='rizin'

# rizin aliases
alias rz='rizin'
alias rzpm='rz-pm'

alias vim="nvim -v"

# TMUX aliases
alias tmux="env TERM=xterm-256color tmux"
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

alias psk='ps -ax | fzf | cut -d " " -f1 | xargs -o kill'
# fzf aliases
alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
alias fbp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# NSE
alias nse='cd /usr/local/Cellar/nmap/6.47/share/nmap/scripts'

# Ostinato
alias ostinato='sudo /Applications/Ostinato.app/Contents/MacOS/Ostinato'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'
alias zc='z; cl'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

alias l.='l -d .* --color=auto'
alias ltr='ls -ltr'

alias el='exa -l'

# show me files matching "ls grep"
alias lsg='ll | rg'

alias ports='sudo lsof -i -P'

# Alias Editing
<<<<<<< Updated upstream
TRAPHUP() {
  source $yadr/zsh/aliases.zsh
}

alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload
||||||| Stash base
alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
=======
alias nvae='nvim $yadr/zsh/aliases.zsh' #alias edit
alias zar='source $yadr/zsh/aliases.zsh'  #alias reload
>>>>>>> Stashed changes

# vim using
#mvim --version > /dev/null 2>&1
#MACVIM_INSTALLED=$?
#if [ $MACVIM_INSTALLED -eq 0 ]; then
#  alias vim="mvim -v"
#fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='nvim ~/.vimrc'

# zsh profile editing
<<<<<<< Updated upstream
alias ze='vim ~/.zshrc'
||||||| Stash base
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'
=======
alias nvze='nvim ~/.zshrc'
alias zr='source ~/.zshrc'
>>>>>>> Stashed changes

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
<<<<<<< Updated upstream
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
||||||| Stash base
=======
alias gcs='git commit -S'
alias glab='git log --branches=*'

alias ggr='git-graph --style round --formet medium --model simple --color always'
>>>>>>> Stashed changes

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'
alias c='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
<<<<<<< Updated upstream
alias c='rails c' # Rails 3
alias co='script/console' # Rails 2
alias cod='script/console --debugger'

#If you want your thin to listen on a port for local VM development
#export VM_IP=10.0.0.1 <-- your vm ip
alias ts='thin start -a ${VM_IP:-127.0.0.1}'
||||||| Stash base
alias c='rails c' # Rails 3
alias co='script/console --irb=pry' # Rails 2
alias ts='thin start'
=======
alias rc='rails c' # Rails 3
alias co='script/console --irb=pry' # Rails 2
alias ts='thin start'
>>>>>>> Stashed changes
alias ms='mongrel_rails start'
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
<<<<<<< Updated upstream
alias zs='zeus server'
alias zc='zeus console'
alias zr='zeus rspec'
alias zrc='zeus rails c'
alias zrs='zeus rails s'
alias zrdbm='zeus rake db:migrate'
alias zrdbtp='zeus rake db:test:prepare'
alias zzz='rm .zeus.sock; pkill zeus; zeus start'
||||||| Stash base
alias zs='zeus server'
alias zc='zeus console'
=======
#alias zs='zeus server'
#alias zc='zeus console'
>>>>>>> Stashed changes

# Rspec
alias rs='rspec spec'
alias sr='spring rspec'
alias src='spring rails c'
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'


# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dbtp='spring rake db:test:prepare'
alias dbm='spring rake db:migrate'
alias dbmr='spring rake db:migrate:redo'
alias dbmd='spring rake db:migrate:down'
alias dbmu='spring rake db:migrate:up'

# Homebrew
<<<<<<< Updated upstream
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
||||||| Stash base
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
=======
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
alias brewf='sudo chown -R "$USER":admin /usr/local'

# NPM
alias nr="npm run "
alias ni="npm install "
alias np="npm publish "
alias nt="npm test"
alias nu="npm update"
alias ns="npm run-script "

alias objcopy='gobjcopy'
alias objdump='gobjdump'
alias readelf='greadelf'

# eza ls replacement aliases
alias ezd='eza -lD --icons'
alias ezf='eza -lF --color=always --icons | grep -v /'
alias ezlh='eza -dl --icons .* --group-directories-first'
alias ezll='eza -al --icons --group-directories-first'
alias ezs='eza -alF --color=always --icons --sort=size | grep -v /'
alias ezt='eza -al --sort=modified --icons'
alias el='eza --group --header --group-directories-first --long --icons'
alias ell='eza --group --header --group-directories-first --long --git --icons'
alias elg='eza --group --header --group-directories-first --long --git --git-ignore --icons'
alias ele='eza --group --header --group-directories-first --long --extended --icons'
alias elt='eza --group --header --group-directories-first --tree --level LEVEL --icons'
alias elc='eza --group --header --group-directories-first --across --icons'
alias elo='eza --group --header --group-directories-first --oneline --icons'
alias ls='eza $eza_params'
alias l='eza --git-ignore --icons $eza_params'
alias ll='eza --all --header --long --icons $eza_params'
alias lld=" eza -dl --color=always --icons --sort=modified --group-directories-first"
alias llm='eza --all --header --long --icons --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa --icons'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params --icons'
alias tree='eza --tree $eza_params --icons'

# packetfu shell startup
alias pktfu='rvmsudo ruby /home/badrobot/code/ruby/packetfu/examples/packetfu-shell.rb'

# rvm reload
alias rvmr='rvm reload'

# preload gems into irb for security/ctf work
# pwn will generate a warning
alias irb="irb -r zsteg -r pwn -r ronin -r packetfu -r heapinfo -r metasm -r one_gadget -r faker -r httparty"

# old habits die hard + color output and git integration
alias cat='bat -f -pp'

# add asdf to path and allow expansion
. "$HOME/.asdf/asdf.sh"

# perl related aliases
alias cpan='perl -MCPAN -e shell'

# tshark color output
alias tsk='tshark --color'

# docker container management aliases
alias dk='docker-compose'
alias dps='docker ps --format "table {{.Names}}\\t{{.Image}}\\t{{.Status}}\\t{{ .Ports }}\\t{{.RunningFor}}\\t{{.Command}}\\t{{ .ID }}" | cut -c-$(tput cols)'
alias dls='docker ps -a --format "table {{.Names}}\\t{{.Image}}\\t{{.Status}}\\t{{ .Ports }}\\t{{.RunningFor}}\\t{{.Command}}\\t{{ .ID }}" | cut -c-$(tput cols)'
alias dim='docker images --format "table {{.Repository}}\\t{{.Tag}}\\t{{.ID}}\\t{{.Size}}\\t{{.CreatedSince}}"'
alias dgc='docker rmi $(docker images -qf "dangling=true")'
alias dvc='docker volume ls -qf dangling=true | xargs docker volume rm'
alias dtop='docker stats $(docker ps --format="{{.Names}}")'
alias dnet='docker network ls && echo && docker inspect --format "{{\$e := . }}{{with .NetworkSettings}} {{\$e.Name}}
{{range \$index, \$net := .Networks}}  - {{\$index}}	{{.IPAddress}}
{{end}}{{end}}" $(docker ps -q)'
alias dtag='docker inspect --format "{{.Name}}
{{range \$index, \$label := .Config.Labels}}  - {{\$index}}={{\$label}}
{{end}}" $(docker ps -q)'

# List all containers by status using custom format
alias dkpsa='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}"'
# Removes a container, it requires the container name \ ID as parameter
alias dkrm='docker rm -f'
# Removes an image, it requires the image name \ ID as parameter
alias dkrmi='docker rmi'
# Lists all images by repository sorted by tag name
alias dkimg='docker image ls --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}" | sort'
# Lists all persistent volumes
alias dkvlm='docker volume ls'
# Diplays a container log, it requires the image name \ ID as parameter
alias dklgs='docker logs'
# Streams a container log, it requires the image name \ ID as parameter
alias dklgsf='docker logs -f'
# Initiates a session withing a container, it requires the image name \ ID as parameter followed by the word "bash"
alias dkterm='docker exec -it'
# Starts a container, it requires the image name \ ID as parameter
alias dkstrt='docker start'
# Stops a container, it requires the image name \ ID as parameter
alias dkstp='docker stop'

# shorten syntax
alias nv='nvim'
alias nve='nv ~/.config/nvim/init.vim'
alias nvdot='nv .'
alias nvpi='nv +PlugInstall +qall'
alias nvpu='nv +PlugUpdate +qall'
alias nvzrc='nv ~/.zshrc'
alias nvza='nv ~/.yadr/zsh/aliases.zsh'
alias nvss='nv ~/.config/starship.toml'
alias nvt='nv ~/.tmux.conf'
alias nvl='nv ~/.config/nvim/lua/init.lua'
alias nvgc='nv .gitconfig'
alias nvgcu='nv .gitconfig.user'
alias nvgi='nv .gitignore'

# set grep alternatives to color always
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
alias grep='rg'
alias rg='rg -j 6 --color always -p -n  -i --engine auto'

# ipython
alias ipy='ipython --profile=startup'
alias nrepl='stdlib repl'

alias upg='brew cleanup --prune=all -q && asdf plugin update --all && asdf update && rvm reload &&  gem update --system && gem update && gem cleanup && npm update && npm audit fix --force && cargo install-update -a && z &&  pip install --upgrade pip && pip install --upgrade -r requirements.txt && pyenv update && nvpu'
>>>>>>> Stashed changes
