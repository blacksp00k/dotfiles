
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
let g:racer_cmd = "~/.cargo/bin/racer"
let $RUST_SRC_PATH="~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
let g:racer_experimental_completer = 1

au BufNewFile,BufRead *.nse set filetype=lua

syntax enable
set background=dark
set termguicolors
colorscheme material-theme
endfor
