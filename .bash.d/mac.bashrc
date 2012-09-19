# support chinese character
alias ls="ls -w -G"
alias vi='env LC_CTYPE=zh_CN.UTF-8 vi'

# mysql bins
export PATH=$PATH:/usr/local/mysql/bin

# increase open files, default is 256
ulimit -n 4096

#For Git branch
PS1=$PS1'`B=$(git branch 2>/dev/null | sed -e "/^ /d" -e "s/* \(.*\)/\1/"); if [ "$B" != "" ]; then S="git"; elif [ -e .bzr ]; then S=bzr; elif [ -e .hg ]; then S="hg"; elif [ -e .svn ]; then S="svn"; else S=""; fi; if [ "$S" != "" ]; then if [ "$B" != "" ]; then M=$S:$B; else M=$S; fi; fi; [[ "$M" != "" ]] && echo -n -e "\[\e[33;40m\]($M)\[\033[01;32m\]\[\e[00m\]"`'
