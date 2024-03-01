# v0.0.1 2023-07-22
# common comamnd map
alias ls='ls -G'
alias ll='ls -Gl'
alias ep="vim ~/.bash_profile"
alias java_version_current="/usr/libexec/java_home"
alias java_version_list="/usr/libexec/java_home -V"

# env variable
export JAVA_HOME="/Users/jeb/Library/Java/JavaVirtualMachines/corretto-1.8.0_372/Contents/Home"
export M2_HOME=/Users/jeb/apps/maven-3.6.3
export PATH=$PATH:$JAVA_HOME:$M2_HOME/bin

# proxy
## npm
alias proxy_set_npm="npm config set proxy http://127.0.0.1:7890 && npm config set https-proxy http://127.0.0.1:7890"
alias proxy_unset_npm="npm config delete proxy && npm config delete https-proxy"
alias proxy_list_npm="npm config list"
# export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# ssh server
## self prod server
alias server_root="ssh root@8.134.69.4"
alias server_jeb="ssh jeb@8.134.69.4"
alias server_deploy="ssh deploy@8.134.69.4"
## self local server
alias imac_jeb="ssh jeb@192.168.10.53"
## company dev
alias lg_dev="ssh -p22 -ladmin 10.33.0.97"
alias lg_test=""
