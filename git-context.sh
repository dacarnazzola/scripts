#!/usr/bin/env bash

OUTPUT='repo-context.txt'

echo "This file contains all the code for my project." > $OUTPUT

for f in `git ls-files`
do
    echo "<file>" >> $OUTPUT
    echo "<file_name>" >> $OUTPUT
    echo $f >> $OUTPUT
    echo "</file_name>" >> $OUTPUT
    echo "<file_contents>" >> $OUTPUT
    cat -n $f >> $OUTPUT
    echo "</file_contents>" >> $OUTPUT
    echo "</file>" >> $OUTPUT
done
