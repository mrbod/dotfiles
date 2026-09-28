#!/usr/bin/env bash
_fcw_dump()
{
    local use cur
    cur=${COMP_WORDS[$COMP_CWORD]}
    mapfile -t use < <(ls *.[fF][cC][wW])
    mapfile -t COMPREPLY < <(compgen -W "${use[*]// /\\ }" -- "$cur")
}

_fcwrs()
{
    local use cur
    cur=${COMP_WORDS[$COMP_CWORD]}
    mapfile -t use < <(find -maxdepth 1 -iname '*.fcw' -printf "%P\n")
    mapfile -t COMPREPLY < <(compgen -W "${use[*]// /\\ }" -- "$cur")
}

complete -o filenames -F _fcw_dump fcw_dump
complete -o filenames -F _fcwrs fcwrs
