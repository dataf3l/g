#!/bin/bash
# vim: syn=sh

# This file will check before adding on git, use as you would
# normally use git.
# Apologies for using bash,it's the only runtime I think
# is most likely to be installed in all the languages.

# more languages in the future

do_add() {
    for files in "$PARAMS"
    do
        for file in $files
        do
            printf "$(tput setaf 1)"
            echo $file
            case $file in
                *.go )
                    gofmt -e $file > /dev/null && git $CMD $file;;
                *.java )
                    javac $file && git $CMD $file;;
                *.js )
                    node --check $file && git $CMD $file;;
                *.json )
                    python -c 'import json, sys;json_file = open(sys.argv[1]); json.loads(json_file.read());json_file.close()' $file && git $CMD $file;;
                *.perl )
                    perl -c $file && git $CMD $file;;
                *.php )
                    php -l $file && git $CMD $file;;
                *.py )
                    python -m py_compile $file && git $CMD $file;;
                *.rb )
                    ruby -c $file && git $CMD $file;;
                *.xml )
                    python -c "import sys, xml.dom.minidom as d; d.parse(sys.argv[1])" $file && git $CMD $file;;
                *.yaml )
                    python -c 'msg = "to suppont yaml extension please run:\npip install pyyaml"; exec("try: import yaml, sys\nexcept: print(msg)");print(yaml.safe_load(sys.stdin))' < $file && git $CMD $file;;
                * )
                    echo "$(tput setaf 3)Warning, file extension ($file) is Unchecked, please add a checker to g (https://github.com/dataf3l/g), with your help, we can have a world where nothing is Unchecked."
                    git $CMD $file
                    continue
            esac
            printf "$(tput sgr0)"
        done
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
