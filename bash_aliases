#!bin/bash

# Manage nice personnal aliases
###############################

# Set up some useful short versions of often used commands.
alias cpfr='cp -fr'
#alias cp='cp -i'
alias dir='ls -1 -F -t -l \!* | more'
#alias fi='find . \( -name "\!*" \) -print'
alias imake='imake -I$LAB_ROOT/imake -TLAB_Imake.tmpl -D$MACHTYPE'
alias ls='ls -F --color=auto'
alias l='ls -F --color=auto'
alias ll='ls -alF --color=auto'
alias mv='mv -i'
alias rm='rm -i'

# Set handy command
alias emacsbashrc='emacs $HOME/.bashrc'
alias emacsaliases='emacs $HOME/.bash_aliases'
alias sourcebashrc='source $HOME/.bashrc'
alias sourcealiases='source $HOME/.bash_aliases'

# color for grep
alias grep='grep --color=auto'

# cd aliases
alias cddevel='cd /home/'$USER'/devel/workspace'
alias cdsrc='cd /home/'$USER'/devel/workspace/src/catkin'
alias cdathenauser='cd /home/'$USER'/devel/workspace/src/catkin/robots/athenaUser'

alias cdwritting='cd $HOME/Documents/writting'
alias cdtalk='cd $HOME/Documents/talk'


# Manage cmake version
######################
alias cmake3='$HOME/Software/cmake-3.8.0-rc1/bin/cmake'
alias ccmake3='$HOME/Software/cmake-3.8.0-rc1/bin/ccmake'

# Manage working environment
############################

# reset PATH
#alias resetbash='export PATH=/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin


# for ros
indigo=/opt/ros/indigo/setup.bash
alias sourceindigo='if [ -f $indigo ]; then
        source $indigo
else
	echo "no file $indigo"
fi'

source_devel_workspace(){
    sourceindigo
    develworkspace='/home/'$USER'/devel/workspace/devel/setup.bash'
    add_to_env PATH /home/$USER/devel/amd-clmc/scripts
    if [ -f $develworkspace ]
    then
        source $develworkspace
    else
	echo "no ros workspace in $develworkspace"
    fi
}
alias sourcedevelworkspace='source_devel_workspace'

# Some git aliases
##################

alias gits='git status'

# Qtcreator dark style
######################
qtcreator_devel(){
    source_devel_workspace
    qtcreator
}
alias qtcreator='qtcreator_devel'
alias qtcreator_dark_scheme='qtcreator -stylesheet=~/Software/Qt-Creator-Darcula/darcula.css'


#echo "~/.bash_aliases sourced"
