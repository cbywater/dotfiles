set nocompatible
set number
hi LineNr ctermfg=238
set ruler

" improves macro performance by saving redraw till the end
set lazyredraw

" whitespace
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set autoindent

" backspace
set backspace=indent,eol,start

" search settings
set hlsearch
set incsearch
map <leader>nh :nohl<CR>

" show tabs
set list
set listchars=tab:\|·
hi SpecialKey ctermfg=236
nohl

execute pathogen#infect()
call pathogen#helptags()

map <C-n> :NERDTreeToggle<CR>

filetype on
filetype plugin on
syntax on

" PHP whitespace settings
autocmd Filetype php setlocal noexpandtab
autocmd Filetype inc setlocal noexpandtab

set t_Co=256
set background=dark
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'
colors gruvbox

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_phpcs_exec='./core/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=./ruleset.xml --warning-severity=10'

let g:syntastic_mode='passive'

map <leader>psc :SyntasticCheck<CR>
map <leader>pse :Errors<CR>

" space leader is the best leader
let mapleader = " "

" json prettyfying
map <leader>fJ :%!python -m json.tool<CR>

" sql prettyfying
map <leader>fS :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>

" buffer and grep result navigation
map <leader>l :ls<CR>
map [b :bprev<CR>
map ]b :bnext<CR>
map [c :cprev<CR>
map ]c :cnext<CR>
map [l :lprev<CR>
map ]l :lnext<CR>

" different way of saving
map <leader>S :w<CR>
map <leader>s :w<CR>

" for moving around windows
map <leader>w <C-w>

" highlight col 80 to show long lines
execute "set colorcolumn=" . join([81, 121], ',')
hi ColorColumn ctermbg=236

set wildignore+=build/*

let g:vdebug_options = {
\    'path_maps': {"/var/www/cjb": "/media/shares/work/epay_dev"},
\    'server': "10.3.3.6",
\    'port': 9000,
\    'ide_key': 'davedavedave'
\}

" csv shortcut
" map <leader>c /"\%(\_[^"]\+\\|""\)*"\\|[^",]*

" var dump snippet because I do this all the god damned time
map <leader>d o<CR>echo "<pre>";<CR>var_dump();<CR>echo "</pre>";<CR>die();<CR><C-[>kkk0f)

" emmet shortcut
map <leader>y <C-Y>

" easier shortcut for register access
map <leader>r "

" easier tab switching
map <leader>tl gt
map <leader>th gT
map <leader>te :tabedit
map <leader>t1 1gt
map <leader>t2 2gt
map <leader>t3 3gt
map <leader>t4 4gt
map <leader>t5 5gt
map <leader>t6 6gt
map <leader>t7 7gt
map <leader>t8 8gt
map <leader>t9 9gt

" toggle expandtab
map <leader>et :set expandtab<CR>
map <leader>eT :set noexpandtab<CR>

" change indentation type
map <leader>is :%retab<CR>
map <leader>it :%retab!<CR>

" php docblocks
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
map <leader>pd :call pdv#DocumentWithSnip()<CR>

map <leader>pt :silent !phpctags -R<CR><CR>

" paste from system clipboard more efficiently
map <leader>cp :r !xclip -selection c -o<CR>
map <leader>cP :r !xclip -o<CR>
vmap <leader>cc :w !xclip -selection c -i<CR>
vmap <leader>cC :w !xclip -i<CR>
"nmap <leader>cc :set opfunc=CopyToClipboard<CR>g@

"function! CopyToClipboard(type)
"	execute "w !xclip -selection -c -i"
"endfunction

let g:dbext_map_prefix = '<Leader>q'
let g:dbext_default_profile_epaysafeDEV = 'type=MYSQL:user=cjb:passwd=BRDuSUqSZYQJ9KB2oA6ztqb6xDUL6NVo:driver=mysql:dbname=cjb:host=10.10.0.23'
let g:dbext_default_profile_epaysafeTEST = 'type=MYSQL:user=ps2:passwd=T9BfewW6EVPvfUk6:driver=mysql:dbname=ps2:host=test.epaysafe.co.uk'
let g:dbext_default_profile_epaysafeLIVE = 'type=MYSQL:user=ps2:passwd=5fAVWwhVybxTXVa6:driver=mysql:dbname=ps2:host=epaysafe.co.uk'
