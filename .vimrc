" Invoke vim-plug
" Install via:
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

" From https://medium.com/@todariasova/rails-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
" Have lines number, syntax highlighting, and filetype ident on
set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

" Customize auto file indentation for ruby and erb files
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" Plugins for better syntax highlighting for Ruby and Rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" This sets a buffer at line 80, and will automatically put new lines for
" anything that goes past line 80.
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=239 guibg=#000000
set tw=80

set ruler

set mouse=a
