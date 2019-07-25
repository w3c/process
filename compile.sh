#!/bin/bash

# So we can see what we're doing
set -x

# Exit with nonzero exit code if anything fails
set -e

# Run bikeshed.  If there are errors, exit with a non-zero code
bikeshed --print=plain -f spec

# Bikeshed the DoCs as well
for i in issues-*.txt; do
    if [ -f $i ]; then
        bikeshed --print=plain -f issues-list $i
    fi
done

# The out directory should contain everything needed to produce the
# HTML version of the spec.  Copy things there if the directory exists.

OUT=${1:-out}

if [ -d $OUT ]; then
    if [ -d snapshots ]; then
        cp -r snapshots $OUT
    fi
    for i in issues-*.html; do
        if [ -f $i ]; then
            cp -r $i $OUT
        fi
    done
    cp index.html $OUT
fi
