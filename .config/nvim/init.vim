:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'Mofiqul/vscode.nvim' " vs code theme

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" vs code theme----------------
" For dark theme (neovim's default)
set background=dark
" Enable transparent background
let g:vscode_transparency = 1
" Enable italic comment
let g:vscode_italic_comment = 1
" Disable nvim-tree background color
let g:vscode_disable_nvimtreebg = v:true

colorscheme vscode
" vs code theme----------------
