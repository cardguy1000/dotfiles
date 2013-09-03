:set number
:set ai
:set si
:set nowrap
:set hlsearch
:set ignorecase
:set smartcase
:set shiftwidth=3
:set tabstop=3
:set expandtab
:set nocompatible
:filetype plugin on
:colorscheme desert
:set cursorline
let NERDTreeShowBookmarks=1
let g:indent_guides_enable_on_vim_startup = 1
let g:netrw_fastbrowse=2

"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html

let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['php'] = 'php,html'

"Visual select last put text
map gV ']V'[

"Page up/down
vmap gj <C-d>
vmap gk <C-u>


map <F2> :tabe ftp://iponly134830@dev.mcbridehomes.com:21/htdocs/<Enter>
map <F3> :tabe ftp://iponly134830@dev.mcbridehomes.com:21/htdocs/classes/<Enter>
map <F11> ^WW
map <F12> :source $MYVIMRC
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
let @f='df(mzf)x`z'

if has('win32') || has('win64')
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
:endif
