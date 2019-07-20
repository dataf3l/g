#!/bin/bash
# vim: syn=sh

# This file will check before adding on git, use as you would
# normally use git.
# Apologies for using bash,it's the only runtime I think
# is most likely to be installed in all the languages.

# more languages in the future

do_add() {
    for file in "$PARAMS"
    do
        case $file in 
	  *.js ) 
            printf "$(tput setaf 1)"
            node --check $file && git $CMD $file
            printf "$(tput sgr0)"
            ;;
	  *.go ) 
            printf "$(tput setaf 1)"
            gofmt -e $file > /dev/null && git $CMD $file
            printf "$(tput sgr0)"
            ;;
          * )
            echo "$(tput setaf 1)Unchecked$(tput sgr0)"
            git $CMD $file
        esac
    done
}
main () {
    if [ "$CMD" = "add" ]; then
        do_add 
    else
        git $CMD $PARAMS
    fi
}

CMD=$1
shift
PARAMS=$@
main


