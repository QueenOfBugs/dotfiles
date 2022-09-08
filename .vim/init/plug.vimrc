" if has('win32')
"     let $VIMRC_FOLDR = $HOME.'/vimfiles'
" elseif has('uniux')
"     let $VIMRC_FOLDR = $HOME.'/.vim'
" endif
let plug_folder = has('win32')? $HOME.'\plugged':$HOME.'/plugged'
" echo plug_folder

call plug#begin(plug_folder)
" Common plugin
Plug 'preservim/nerdcommenter'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'

" Note taking
" Plug 'vimwiki/vimwiki'

" Markdown
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'

" Common plugin
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'

" Note taking
Plug 'vimwiki/vimwiki'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" auto show the autocompletion pop menu
" Plug 'vim-scripts/AutoComplPop'
" Plug 'lifepillar/vim-mucomplete'

"  Plugins just need vim
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'andreypopp/asyncomplete-ale.vim'


" deoplete
" Plug 'Shougo/deoplete.nvim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'lighttiger2505/deoplete-vim-lsp'

" python plugin sets
" Plug 'davidhalter/jedi-vim'

" asyncomplete & snippet & lsp
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" if has('python3')
"     Plug 'SirVer/ultisnips'
"     Plug 'honza/vim-snippets'
"     Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
" endif

" LSP integrate with Snippet Plugin
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

" code lint
" Plug 'dense-analysis/ale'

" complete engine
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
  " Plug 'deoplete-plugins/deoplete-jedi'
" endif
"
" coc-vim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Snippet Plugin
" snippet片段集合
"Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'thomasfaingnaert/vim-lsp-snippets'
" Plug 'thomasfaingnaert/vim-lsp-ultisnips'


" LSP&Asyncomplete for Python&Snippet 

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" " configuration form  https://maciejzj.xyz/vim-lsp-and-autocompletion.html
call plug#end()

