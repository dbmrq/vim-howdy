
" howdy.vim - A tiny MRU start screen
" Author:   Daniel B. Marques
" Version:  0.1
" License:  Same as Vim


if exists("g:loaded_howdy")
    finish
endif
let g:loaded_howdy = 1

let s:save_cpo = &cpo
set cpo&vim


if !exists('g:howdy_ignore')
    let g:howdy_ignore = [ 'vim\/runtime\/doc\/.*.txt' ]
endif

function! s:howdy()
    belowright 12new +file\ Howdy
    0put =v:oldfiles
    call matchadd('Conceal', '^\zs.*\ze\/.*\/.*\/', 10, 99, {'conceal': '…'})
    for pattern in g:howdy_ignore | execute 'g/' . pattern . '/d' | endfor
    execute 'g/^/m0' | execute 'normal! G'
    nnoremap <silent> <buffer> q :q<CR>
    nnoremap <silent> <buffer> <CR> :call <SID>openFile()<CR>
    setlocal nomodifiable noswapfile nospell nowrap
    setlocal buftype=nofile bufhidden=delete conceallevel=2
endfunction

function! s:openFile()
    let l:file = getline('.') | q | execute 'e' l:file
endfunction

function! s:noFile()
    if @% == ""
        setlocal noswapfile buflisted
        setlocal buftype=nofile bufhidden=hide filetype=markdown
        call s:howdy()
    endif
endfunction

command! Howdy silent! call <SID>howdy()

autocmd VimEnter * call <SID>noFile()


let &cpo = s:save_cpo
unlet s:save_cpo

