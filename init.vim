let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

lua require('initialize')

" Stuff I needa convert ot Lua
function! s:init_fern() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-expand-or-enter)
        \ fern#smart#drawer(
        \   "\<Plug>(fern-open-or-expand)",
        \   "\<Plug>(fern-open-or-enter)",
        \ )
  nmap <buffer><expr>
        \ <Plug>(fern-my-collapse-or-leave)
        \ fern#smart#drawer(
        \   "\<Plug>(fern-action-collapse)",
        \   "\<Plug>(fern-action-leave)",
        \ )
  nmap <buffer><nowait> l <Plug>(fern-my-expand-or-enter)
  nmap <buffer><nowait> <Enter> <Plug>(fern-my-expand-or-enter)
  nmap <buffer><nowait> h <Plug>(fern-my-collapse-or-leave)
endfunction

function! s:fern_preview_init() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-preview-or-nop)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:edit)\<C-w>p",
        \   "",
        \ )
  nmap <buffer><expr> j
        \ fern#smart#drawer(
        \   "j\<Plug>(fern-my-preview-or-nop)",
        \   "j",
        \ )
  nmap <buffer><expr> k
        \ fern#smart#drawer(
        \   "k\<Plug>(fern-my-preview-or-nop)",
        \   "k",
        \ )
endfunction

" You need this otherwise you cannot switch modified buffer
set hidden

augroup my-fern-startup
  autocmd! *
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * ++nested Fern . -drawer | wincmd p
augroup END

nmap <buffer> <Plug>(my-fern-open-and-stay) <Plug>(fern-action-open)<C-w><C-p>
