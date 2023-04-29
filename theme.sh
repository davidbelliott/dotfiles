#!/bin/sh -e
 
usage() {
    echo "Usage: theme.sh [ -i | --init ] targetname"
    exit 2
}
 
PARSED_ARGS=$(getopt -n theme -o i --long init -- "$@")
VALID_ARGS=$?
if [ "$VALID_ARGS" != "0" ]; then
    usage
fi
 
INIT=0
TARGET=""
NEXT_IS_TARGET=0
 
for x in $PARSED_ARGS; do
    case "$x" in
        -i | --init) INIT=1;;
        --) NEXT_IS_TARGET=1;;
        *)
            if [ $NEXT_IS_TARGET -eq 1 ]; then
                echo "Target set: $NEXT_IS_TARGET"
                TARGET=$(echo "$x" | tr -d "'")
                NEXT_IS_TARGET=0
            else
                echo "Unexpected argument: $x"
                usage
            fi;;
    esac
done
 
if [ -z "$TARGET" ]; then
    echo "Missing target name"
    usage
fi
 
if [ $INIT -eq 1 ]; then
    python -m venv venv
fi
 
. venv/bin/activate
 
if [ $INIT -eq 1 ]; then
    pip install -r requirements.txt
    if [ -e "$TARGET/init.sh" ]; then
        "$TARGET/init.sh"
    fi
fi
 
./theme.py "$TARGET/config.yaml"
 
if [ -e "$TARGET/post.sh" ]; then
    "$TARGET/post.sh"
fi
