#!/usr/bin/env bash
venv="venv"
[[ "$BASH_SOURCE" == "$0" ]] && {
    myself="$(readlink -m ${0#-*})"
    echo "Usage: . $(basename $myself)" > /dev/stderr
    exit 1
} || {
    [[ -d "$venv" ]] || virtualenv -p /usr/bin/python3 "$venv"
    echo -e ">> Entering virtual environment \e[33m\"$venv\"\e\0[m" > /dev/stdout
    source "$venv/bin/activate"
}
