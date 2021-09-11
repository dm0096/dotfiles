# putting bash aliases in this file

# apt aliases
alias sau="sudo apt upgrade"
alias sai="sudo apt install"

# Custom script aliases
alias md2pdf="~/bin/md2pdf.sh"
alias pdfcombine="~/bin/pdfcombine.sh"

# Managing the Git bare repo that handles my dotfiles as in:
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
