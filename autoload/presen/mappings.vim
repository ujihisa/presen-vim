function! presen#mappings#define_default_mappings()
        nnoremap <buffer><silent> <Plug>(presen_nextPage)        :<C-u>call presen#nextPage()<CR>
        nnoremap <buffer><silent> <Plug>(presen_prevPage)        :<C-u>call presen#prevPage()<CR>
        nnoremap <buffer><silent> <Plug>(presen_quit)            :<C-u>call presen#quit()<CR>
        nnoremap <buffer><silent> <Plug>(presen_firstPage)       :<C-u>call presen#firstPage()<CR>
        nnoremap <buffer><silent> <Plug>(presen_lastPage)        :<C-u>call presen#lastPage()<CR>

        if exists('g:presen_vim_no_default_key_mappings') && g:presen_vim_no_default_key_mappings
                return
        endif

        "normal mode key-mapppings
        nmap <buffer><silent> h <Plug>(presen_prevPage)
        nmap <buffer><silent> l <Plug>(presen_nextPage)
        nmap <buffer><silent> q <Plug>(presen_quit)
        nmap <buffer><silent> < <Plug>(presen_firstPage)
        nmap <buffer><silent> > <Plug>(presen_lastPage)
endfunction
