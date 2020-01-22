function run_in_vs_env
{
    eval vssetup="\$$1\\$2"
    PATH="$ORIGINAL_PATH" cmd /Q /C call "$vssetup" "&&" "${@:3}"
}

function run_vs15
{
    VS150COMNTOOLS="C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\vc\\Auxiliary\\Build\\"
    run_in_vs_env VS150COMNTOOLS vcvars32.bat "$@"
}

function run_vs14
{
    run_in_vs_env VS140COMNTOOLS vsvars32.bat "$@"
}

function run_vs12
{
    run_in_vs_env VS120COMNTOOLS vsvars32.bat "$@"
}

function run_vs11
{
    run_in_vs_env VS110COMNTOOLS vsvars32.bat "$@"
}

function run_vs10
{
    run_in_vs_env VS100COMNTOOLS vsvars32.bat "$@"
}

export -f run_in_vs_env
export -f run_vs10
export -f run_vs11
export -f run_vs12
export -f run_vs14
export -f run_vs15

