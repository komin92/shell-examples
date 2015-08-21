#!/bin/bash
# Prints out the largest file on the filesystem

# NOTES
# - the find command starts it's search at the top of the filesystem hierarchy: "/"
# - it prints out all files that are 10 megabytes or larger
# - we use the "-exec" action to run a command for each file found by find
# - we then pipe these results to the sort command, sorting on column 5 (filesize), in human-readable format
# - finally, piping to "tail -1" prints the largest file found
find / -size +10M -exec ls -lh '{}' \; 2>/dev/null | sort -k5 -h | tail -1