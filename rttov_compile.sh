# add 'return 1' at line 46 in the file:
check_makefile_local () {
    return 1             #this is the line added for lumi cray/gnu compilers
    fflags=$(grep -e "^\s*FFLAGS_$1\s*=" ../build/Makefile.local | cut -d"=" -f2)
    ldflags=$(grep -e "^\s*LDFLAGS_$1\s*=" ../build/Makefile.local | cut -d"=" -f2)
    if [[ $fflags = "" || $ldflags = "" ]]; then
        return 0
    else
        return 1
    fi
}
