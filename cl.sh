function run_in_vs_env
{
    eval vssetup="\$$1\\vsvars32.bat"
    cmd /Q /C call "$vssetup" "&&" "${@:2}"
}

function run_vs14
{
    run_in_vs_env VS140COMNTOOLS "$@"
}

function run_vs12
{
    run_in_vs_env VS120COMNTOOLS "$@"
}

function run_vs11
{
    run_in_vs_env VS110COMNTOOLS "$@"
}

function run_vs10
{
    run_in_vs_env VS100COMNTOOLS "$@"
}

export -f run_in_vs_env
export -f run_vs10
export -f run_vs11
export -f run_vs12
export -f run_vs14

