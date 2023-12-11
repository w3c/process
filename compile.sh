#!/bin/bash

# So we can see what we're doing
set -x

# Exit with nonzero exit code if anything fails
set -e

# Run bikeshed.  If there are errors, exit with a non-zero code
# Include a warning in the status for topic branches
if [ $1 ] ; then
	bikeshed --print=plain -f spec index.bs index.html \
		--md-status-text="<details class=annoying-warning open><summary>This is not the latest Editor’s Draft of the W3C Process.</summary>\
			<p>This is the “$1” topic branch; make sure this is indeed the one you’re looking for.\
			If not, the current Editor’s Draft can be found at\
			<a href='https://www.w3.org/Consortium/Process/Drafts/'>https://www.w3.org/Consortium/Process/Drafts/</a>.<br>\
			(The <a href=#sotd>Status of this document</a> section may have information about the purpose of this branch.)</details>"
else
	bikeshed --print=plain -f spec
fi

# Bikeshed the DoCs as well, unless we're on a topic branch
if ! [ $1 ] ; then
	for i in issues-*.txt; do
		if [ -f $i ]; then
			bikeshed --print=plain -f issues-list $i
		fi
	done
fi

# The out/$1 directory needs to contain everything needed
# to publish the HTML version of the spec.
# Copy things there if the directory exists.
# Only copy the actual Process if we're on a topic branch,
# and everything else too (DoCs, snapshots) if we're on the main branch.

if [ -d out/$1 ]; then
	if ! [ $1 ] ; then
		if [ -d snapshots ]; then
			cp -r snapshots out/$1/
		fi
		for i in issues-*.html; do
			if [ -f $i ]; then
				cp -r $i out/$1/
			fi
		done
	fi
    cp index.html out/$1/
fi
