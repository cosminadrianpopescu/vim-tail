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

function! s:tail_update()
    edit
    normal G
endfunction

function! tail#tick(timer_id)
    if exists('b:tail_timer_id') && b:tail_timer_id == a:timer_id
        if getfsize(bufname('%')) != b:tail_file_size
            let b:tail_file_size = getfsize(bufname('%'))
            call s:tail_update()
        endif
    endif
endfunction

function! tail#start_tail()
    let b:tail_file_size = getfsize(bufname('%'))
    let b:tail_timer_id = timer_start(1000, 'tail#tick', {'repeat': -1})
    call s:tail_update()
endfunction

function! tail#stop_tail()
    if exists('b:tail_timer_id')
        call timer_stop(b:tail_timer_id)
        unlet b:tail_timer_id
        unlet b:tail_file_size
    endif
endfunction
