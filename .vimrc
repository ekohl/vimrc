if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
  augroup END
endif

syntax on

filetype plugin indent on

set pastetoggle=<F2>

highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/
autocmd Syntax * syn match TrailWhitespace /\s\+$\| \+\ze\t/

set wildmode=longest,list:longest,list:full

call pathogen#infect()
