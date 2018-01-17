# vimrc
my vimrc conf

<p>apt-vim: <a href="https://github.com/egalpin/apt-vim">https://github.com/egalpin/apt-vim</a></P>

<p>1.<a href="https://github.com/tpope/vim-pathogen" title="vim-pathogen">vim-pathogen</a></P>
<p>2.<a href="https://github.com/scrooloose/nerdtree" title="nerdtree">nerdtree</a></P>
<p>3.<a href="https://github.com/tomasr/molokai" title="molokai">molokai</a></P>
<p>install gocode</p>

<h2>命令行执行以下安装</h2>
<pre>
<code>
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

apt-vim install -y https://github.com/scrooloose/nerdtree.git

cd ~/.vim
git clone https://github.com/tomasr/molokai.git
cp molokai/colors/ . -r

</code>
</pre>

<h2>将以下配置加入到 ~/.vimrc</h2>
<pre>
<code>
set paste
set ts=4                       
set expandtab
set encoding=utf-8
%retab!

set nocp
call pathogen#infect()         

set rtp+=/usr/local/go/misc/vim
syntax enable
syntax on
filetype plugin indent on

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map &lt;C-n> :NERDTreeToggle&lt;CR>

let g:molokai_original = 1 
let g:rehash256 = 1 
set nu
set t_Co=256
set background=dark
colorscheme molokai
</code>
</pre>
