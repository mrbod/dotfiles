function pargs
{
    a=$1
    shift
    cnt=1
    while [ "x$a" != "x" ]
    do
        echo "$cnt: $a"
        a=$1
        shift
        cnt=$((cnt + 1))
    done
}

function run_in_ps_vs_env
{
    powershell.exe "$(wslpath -w ~/.dotfiles/vs.ps1)" $@
}

function X_run_in_vs_env
{
    eval vssetup="\$$1\\$2"
    cmd.exe /Q /C set "TMP=C:\\Users\\bod\\pkdata\\code\\tmp&&" set "TEMP=C:\\Users\\bod\\pkdata\\code\\tmp&&" call "$vssetup" "&&" "${@:3}"
}

function run_in_vs_env
{
    X_run_in_vs_env $* | gawk 'BEGIN { output=0; } output {print $0; fflush(stdout);} /Environment initialized for/ { output=1; }'
    [ "${PIPESTATUS[0]}" == "0" ]
}

function vs18
{
    VS180COMNTOOLS="C:\\Program Files\\Microsoft Visual Studio\\18\\Enterprise\\VC\\Auxiliary\\Build\\"
    run_in_vs_env VS180COMNTOOLS vcvars32.bat "$@"
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
    VS100COMNTOOLS="c:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\VC\\bin\\"
    eval vssetup="\$$1\\$2"
    cmd.exe /Q /C call "$vssetup" "&&" "${@:3}"
    run_in_vs_env VS100COMNTOOLS vsvars32.bat "$@"
}

function psvs
{
    run_in_ps_vs_env "$@"
}

function vs
{
    vs18 "$@"
}

export -f X_run_in_vs_env
export -f run_in_vs_env
export -f run_in_ps_vs_env
export -f vs16
export -f vs17
export -f vs18
export -f vs
export -f psvs
