PATH=$PATH:/usr/local/bin/:/opt/local/bin:/Developer/SDKs/flex_sdk/bin/:/opt/current_ruby/gems/1.8/gems/railties-3.0.0.beta/bin/:/opt/current_ruby/bin

PS1='`__git_ps1 "\[\e[32m\]%s\[\e[0m\]"` \W \$ '
source /opt/local/etc/bash_completion.d/git

alias s='git status'
alias a='git add'
alias co='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gpu='git push origin master'

alias cc='rails c'
alias ss='rails s'
alias db='rails db'

alias dec='cap deploy:update_code'

alias ..='cd ..'     # move up 1 directory
alias ...='cd ../..' #  move up 2 directories

# a nice function to send authorized keys to the server
# picked up from deploying rails applications ( pragprog.com) 
# Usage: authme 123.45.67.89
function authme {
   ssh $1 'cat >> ~/.ssh/authorized_keys' < ~/.ssh/id_dsa.pub
 }

#don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups


function g() {
  grep -R $1 * $2 $3 $4 $5 -i --colour=always --exclude=*.log
}

function bharati() {
  ssh bharati0@bharati.ru
}

function go() {
  #ssh 192.168.1.100
  ssh 93.94.152.87
}


set -o vi
FIN='/Users/faust45/Work/rails/fincake'
APP='/Users/faust45/Work/rails/app'
GEM='/opt/local/var/lib/ruby/gems/1.8/gems/'
AR='/opt/local/var/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib/active_record'
VH='/opt/local/var/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib/action_view/helpers'

IMLY='/Users/faust45/Work/rails/imly'
LIVE='/Users/faust45/Work/rails/live'
MAHA='/Users/faust45/Work/rails/maha_mandala_couch'
alias m='cd $MAHA'

cd $MAHA
