"
"  Vim Tail
"
"  Copyright (c) Cosmin Popescu
"
"  Author:      Cosmin Popescu <cosminadrianpopescu at gmail dot com>
"  Version:     1.00 (2016-10-06)
"  Requires:    Vim 7
"  License:     GPL
"
"  Description:
"
"  Small plugin to tail a modified file
"

command! -nargs=0 TailStart call tail#start_tail()
command! -nargs=0 TailStop call tail#stop_tail()
