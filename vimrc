set runtimepath+=~.vim
call pathogen#infect('~/.vim/bundle')

"Open tag in new tab
:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
 
"Delete without yanking into register
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"Replace visual text without yanking deletion into register
vnoremap <leader>p "_dP

"Omni completion options
:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"Visual select last put text
map gV ']V'[

:set number
:set ai
:set nowrap
:set hlsearch
:set ignorecase
:set smartcase
:set shiftwidth=3
:set tabstop=3
:set expandtab
:set nocompatible
:filetype plugin on
:colorscheme desert256
:set cursorline
let NERDTreeShowBookmarks=1
let g:indent_guides_enable_on_vim_startup = 1
let g:netrw_fastbrowse=2

let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['php'] = 'php,html'


"Page up/down
vmap gj <C-d>
vmap gk <C-u>

map <F11> :call ReloadAllSnippets()

function! ReloadSnippets( snippets_dir, ft )
    if strlen( a:ft ) == 0
        let filetype = "_"
    else
        let filetype = a:ft
    endif

    call ResetSnippets()
    call GetSnippets( a:snippets_dir, filetype )
endfunction

nmap ,rr :call ReloadSnippets(snippets_dir, &filetype)<CR>

map @s :let @z=@/gv:s/\(\s*\)\(.*\)/\1$this->\2 = $row['\2'];/<Enter>:noh<Enter>:let@/=@z
map @p :let @z=@/gv:s/\(\s*\)\(.*\)/\1public function get\u\2(){\r\1   return $this->\2;\r\1}\r\1public function set\u\2($value){\r\1   $this->\2 = $value;\r\1}\r/<Enter><Enter>:noh<Enter>:let@/=@z
map @g :let @z=@/gv:s/\(\s*\)\(.*\)/\1public function get\u\2(){\r\1   return $this->\2;\r\1}\1\r/<Enter><Enter>:noh<Enter>:let@/=@z
map @v :let @z=@/gv:s/\(\s*\)\(.*\)/\1private $\2;<Enter>:noh<Enter>:let @/=@z
map @e :let @z=@/gv:s/"/'/ge<Enter>gv:s/^\(\s*\)\(.*\)$/\1echo "\2\\n";<Enter>:noh<Enter> :let@/=@z
let @u=':let @z=@/gv:s/\(\s*\)\(.*\)/\1\2=:\2gv:-1s/$/,gvJI$query = "UPDATE replaceme SET A WHERE replaceme=:replaceme";0/replaceme:let@/=@z'
let @i=':let @z=@/gv:s/^/:gv:-1s/$/,gvJyyP:s/://gI(A)I$query = "INSERT INTO replaceme A VALUES j:A)I(kJA";0/replaceme:let@/=@z'
let @c=':let @z=@/gv:s/\(\s*\)\(.*\)/\1$\2 = UDF::prep_for_sql($this->\2);:noh:let@/=@z'
let @b=':let @z=@/gv:s/\(\s*\)\(.*\)/\1$stmt->bindParam(":\2",$\2);:noh:let@/=@z'
let @y=':let @z=@/gv:s/\(\s*\)\(.*\)/\1''\2\'' => $replaceme->get\u\2(),$xgvJI(A);0/replaceme:let@/=@z'
let @f='df(f)x'

if has('win32') || has('win64')
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
:endif

source ~/.myvimrc
