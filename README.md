# task.sh

``task.sh`` is a little tool made for easy step-by-step Bash scripts. It
provides one function, `task`, which take a command and print it with a
checkbox. When the task complete, it either checks it or write an `F` to mark
it as failed and log its stderr output.

## Install

Download `task.sh` somewhere:

    curl -sL 'http://git.io/EgU4Vg' > task.sh


## Usage

Source `task.sh` in Bash:

    . task.sh

Then prefix each command with `task`. Be carefull to use quotes when you’re
using special Bash characters, like redirections and pipes:

    # wrong:
    task echo bar > foo

    # right:
    task 'echo bar > foo'

Right now `task` doesn’t support command output, so you’ll need to redirect any
output (stdout _and_ stderr) somewhere to not mess up with `task`’s own output.
This should be improved in the future.


### Example

    . path/to/task.sh
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
