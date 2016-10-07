Vim Tail
==============================================================================

This is a simple small plugin to tail an opened file. Once you run the
`TailStart` command, the current buffer will be checked every second for
changes. If a change is detected, then the file is reloaded and the cursor is
placed at the end of the file (`normal G`). 

It would behave basically like `tail -f` on a file. 

There are 2 commands: `TailStart` will start tailing a file and `TailStop`
will stop watching the file
