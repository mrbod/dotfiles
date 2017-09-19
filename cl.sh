function run_in_vs_env
{
    eval vssetup="\$$1\\vsvars32.bat"
    cmd /Q /C call "$vssetup" "&&" "${@:2}"
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

