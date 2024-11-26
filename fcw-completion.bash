#!/usr/bin/env bash
_fcw_completions()
{
    local use cur
    cur=${COMP_WORDS[$COMP_CWORD]}
    mapfile -t use < <(ls *.[fF][cC][wW])
    mapfile -t COMPREPLY < <(compgen -W "${use[*]// /\\ }" -- "$cur")
}

complete -o filenames -F _fcw_completions fcw_dump
complete -o filenames -F _fcw_completions fcwrs
