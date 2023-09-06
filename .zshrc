# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arejula11/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# alias
alias ls='ls --color=auto'
     #alias dir='dir --color=auto'
     #alias vdir='vdir --color=auto'
 
     alias grep='grep --color=auto'
     alias fgrep='fgrep --color=auto'
     alias egrep='egrep --color=auto'

#some more ls aliases 
   alias ll='ls -alF' 
   alias la='ls -A' 
   alias l='ls -CF' 
   alias goSegundo='cd ~/Documents/Universidad/2º' 
   alias goPscd='cd ~/Documents/Universidad/2º/PSCD' 
   alias goTcomp='cd ~/Documents/Universidad/2º/TCOMP'
   alias goEda='cd ~/Documents/Universidad/2º/EDA'
   alias goRedes='cd ~/Documents/Universidad/2º/REDES'
   alias goAoc2='cd ~/Documents/Universidad/2º/AOC2'
   alias goBases='cd ~/Documents/Universidad/2º/BASES'
   alias goAdsis='cd ~/Documents/Universidad/2º/ADSIS'
   alias goTecpro='cd ~/Documents/Universidad/2º/TECPRO'
   alias goIpo='cd ~/Documents/Universidad/2º/IPO'
  
   alias goTercero='cd ~/Documents/Universidad/3º'
   alias goIA='cd ~/Documents/Universidad/3º/IA'
   alias goIngSof='cd ~/Documents/Universidad/3º/IngSof'
   alias goPH='cd ~/Documents/Universidad/3º/PH'
   alias goSisDis='cd ~/Documents/Universidad/3º/SisDis'
   alias goSisInfo='cd ~/Documents/Universidad/3º/SisInfo'

 

#Prompt

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print 
$NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch') '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst


PROMPT='%B%(?.%F{green}%n .%F{red}%n )%f%b %B%F{27}%1~%f%b ' #%B%F{226}$(git_branch_name)%f%b%# '
RPROMPT="%T"

#Allow history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history





