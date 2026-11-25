#!/bin/sh
#
#---------------------------------------------------------------
# File: remove_executables_and_fort_files.sh
#
# This script removes temporary or generated files created during
# Fortran, C, C++ program execution and build process.
#
# Usage:
#   ./remove_executables_and_fort_files.sh <target directory> <fort|exec>
#
# Arguments:
#  <target directory> : absolute path to the directory containing
#                       executable files and fortran temp file
#  fort               : Remove Fortran runtime temporary files
#  exec               : Remove ELF DYN executables (C/C++/Fortran)
#---------------------------------------------------------------
set -euo pipefail

if [ $# -lt 2 ]; then
    echo "Usage: $0 <target directory> <fort|exec>"
    exit 1
fi

DIR="$1"
MODE="$2"
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a directory."
    exit 1
fi

case "$DIR" in
    /*) ;;
    *)
        echo "Error: please specify an absolute path"
	exit 1
	;;
esac

delete_fort_files() {
    echo "Removing Fortran runtime temporary files"

    case "$DIR" in
        *"/Fortran/"*)
            ;;
        *)
            echo "Error: directory must include 'Fortran' in its path"
	    exit 1
	    ;;
    esac

    n=0
    LC_ALL=C find "$DIR" -type f \( \
                -name 'fort.[0-9]*' -o \
	        -name 'ioct144.f0[0-9]' -o \
	        -name '*.dat' \
	     \)	| while read -r f; do
        rm -f -- "$f"
        n=$((n + 1))
        if [ $((n % 100)) -eq 0 ]; then
            printf "." >&2
        fi
    done
}

delete_exec_files() {
	echo "Removing C, C++, Fortran executables (ELF type DYN)"

    case "$DIR" in
        *"/C/"*|*"/C++/"*|*"/Fortran/"*)
            ;;
        *)
            echo "Error: directory must include 'C', 'C++', or 'Fortran' in its path"
	    exit 1
	    ;;
    esac

    LC_ALL=C find "$DIR" -type f ! -name "*.*" -exec sh -c '
        n=0
        for f do
            if readelf -h "$f" 2>/dev/null | grep -Eq "^ *Type:[[:space:]]*DYN( |$)"; then
	        rm -f -- "$f"
	        n=$((n + 1))
	        if [ $((n % 500)) -eq 0 ]; then
	            printf "." >&2
	        fi
	    fi
        done
    ' sh {} +
}

case "$MODE" in
    fort)
        delete_fort_files
	;;
    exec)
        delete_exec_files
	;;
    *)
	echo "Error: Invalid mode '$MODE' (use fort|exec)"
	exit 1
	;;
esac

printf "\n Done.\n" >&2
