function X_run_in_vs_env
{
    eval vssetup="\$$1\\$2"
    cmd.exe /Q /C call "$vssetup" "&&" "${@:3}"
}

function run_in_vs_env
{
    X_run_in_vs_env $* | gawk 'BEGIN { output=0; } output {print $0; fflush(stdout);} /Environment initialized for/ { output=1; }'
    [ "${PIPESTATUS[0]}" == "0" ]
}

function vs17
{
    VS170COMNTOOLS="C:\\Program Files\\Microsoft Visual Studio\\2022\\Professional\\VC\\Auxiliary\\Build\\"
    run_in_vs_env VS170COMNTOOLS vcvars32.bat "$@"
}

function vs16
{
    VS160COMNTOOLS="C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Professional\\vc\\Auxiliary\\Build\\"
    run_in_vs_env VS160COMNTOOLS vcvars32.bat "$@"
}

function vs15
{
    VS150COMNTOOLS="C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\vc\\Auxiliary\\Build\\"
    run_in_vs_env VS150COMNTOOLS vcvars32.bat "$@"
}

function vs14
{
    run_in_vs_env VS140COMNTOOLS vsvars32.bat "$@"
}

function vs12
{
    run_in_vs_env VS120COMNTOOLS vsvars32.bat "$@"
}

function vs11
{
    run_in_vs_env VS110COMNTOOLS vsvars32.bat "$@"
}

function vs10
{
    run_in_vs_env VS100COMNTOOLS vsvars32.bat "$@"
}

function vs
{
    vs17 "$@"
}

export -f X_run_in_vs_env
export -f run_in_vs_env
#export -f vs10
#export -f vs11
#export -f vs12
#export -f vs14
#export -f vs15
export -f vs16
export -f vs17
export -f vs
