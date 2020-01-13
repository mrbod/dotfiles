transfer() {
    if [ $# -eq 0 ]
    then
        echo "No arguments specified. Usage:"
        echo "transfer /tmp/test.md"
        echo "cat /tmp/test.md | transfer test.md"
        return 1
    fi
    tmpfile=$(mktemp)
    file="$1"
    basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g')
    if tty -s
    then
        if [ -d "$file" ]
        then
            basefile="${basefile}.zip"
            (cd "$file" && zip -r -q - .) |
                curl --progress-bar --upload-file "-" "https://transfer.sh/$basefile" >> $tmpfile
        else
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else
        curl --progress-bar --upload-file "-" "https://transfer.sh/$basefile" >> $tmpfile 
    fi
    cat $tmpfile
    echo
    printf "[%s] %s\n" "$(date --rfc-3339=seconds)" "$(cat $tmpfile)" >> "$HOME/.transfers"
    rm -f $tmpfile
}

