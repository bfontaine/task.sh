# task.sh

``task.sh`` is a little tool made for easy step-by-step Bash scripts. It
provides one function, `task`, which take a command and print it with a
checkbox. When the task complete, it either checks it or write an `F` to mark
it as failed and log its stderr output.

## Install

TODO

## Example

    . task.sh
    task touch foo
    task mkdir bar
    task mv foo bar/
    task sleep 1
    task touch bar # will fail
    task true

Result:

    [x] touch foo
    [F] mkdir bar
    [x] mv foo bar/
    [x] sleep 1
    [x] touch bar
    [x] true
