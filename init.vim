lua require('plugins')
lua require('init')

" Leader
let mapleader = ","

" Options
set background=dark
set completeopt=noinsert,menuone,noselect
set hidden

set number
set title
set ttimeoutlen=0
set wildmenu
set noswapfile

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Syntax
filetype plugin indent on
syntax on
colorscheme onedark

" Color support
set t_Co=256

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" File explorer
nnoremap <leader>n :NvimTreeToggle<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fr <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>




if has("nvim")
    " Make escape work in the Neovim terminal.
  tnoremap <Esc> <C-\><C-n>

  " Make navigation into and out of Neovim terminal splits nicer.
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
endif

nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
au Filetype python nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
au Filetype python nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
au Filetype python nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
au Filetype python vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
au Filetype typescript,javascript nnoremap <silent> <leader>dn :lua require('jester').debug()<CR>
au Filetype typescript,javascript nnoremap <silent> <leader>dl :lua require('jester').debug_last()<CR>
" nnoremap <silent> <leader>dn :lua require("neotest").run.run({strategy = "dap"})<CR>

set autoread
au CursorHold * checktime

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
set title titlestring=%{fnamemodify(getcwd(),\ ':t')}
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>

" spelling
" set spell spelllang=en_us

nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>
vnoremap <C-C> "*y
vnoremap <C-X> "*x
" map <C-V> "*p
" cmap <C-V>  <C-R>*
" inoremap <C-V> <C-R>*
