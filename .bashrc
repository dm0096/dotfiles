# .bashrc v.1.1
#  DO NOT add ANYTHING from line 1 until line 12. 
#   
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

[[ -n $CLUSTERNAME && $CLUSTERNAME == "MATRIX" ]] && { [[ -f ~/.bashrc.matrix ]] && . ~/.bashrc.matrix; return $? ; }  

## DO NOT add ANYTHING above this line 
##
################################################
# NON-MATRIX PATHS, ETC. ONLY
#
# Add any environment variables, aliases and functions here. Please
# note that this file does not apply when you log in to the MATRIX
# cluster. Settings for Matrix need to be made in ~/.bashrc.matrix
 
# User specific environment and startup programs
# For PATH, you can chain paths with ":". Example -> "/common/foo/bin:/drive/bin"
export PATH="$HOME/bin:$PATH:/nas/rhome/share/opt/pkgs/radx/20160809/bin:/nas/rhome/share/opt/pkgs/solo3/20160614-EL7/bin:/common/pkgs/nco/v4.6.1_mpi-pgi16.3_gcc_EL7/bin"
export RSYNC_RSH="ssh -2"


# User specific aliases and functions
#alias grep='grep --color=auto'
alias rstor='cd /rstor/dmeyer; ls'
alias rhome='cd ~; ls'
#alias swp_to_cfradial 'tcsh /rhome/dmeyer/Work/GRA/rad-scripts/swp_to_cfrad.csh'
#alias cfradial_to_swp  'tcsh /rhome/dmeyer/Work/GRA/rad-scripts/cfrad_to_swp.csh'
set -o vi # vim keybinds for bash

# Dotfile management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
