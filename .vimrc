"###表示設定###
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行番号
set number
set cursorline " カーソルラインをハイライト
set title
set showmatch
syntax on
"" タブ・インデント設定
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set shiftround  " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅

"" カラースキーム
set background=dark
colorscheme hybrid

"###検索設定###
set ignorecase
set smartcase
set wrapscan
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" j連打でエスケープ
inoremap <silent> jj <ESC>


" ペースト設定
" クリップボードからペーストするときにインデントを無効に
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
