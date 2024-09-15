
"toggle paste formatting on and off
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath

set hidden

au BufNewFile,BufRead *.nse set filetype=lua

syntax enable
set background=dark
set termguicolors
colorscheme nord
endfor
