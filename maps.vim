nnoremap <c-s> :w <CR>
nnoremap <c-q> :q <CR>
nnoremap <c-b> :NERDTreeToggle <CR>
nnoremap <c-s-f> :Prettier <CR>
nnoremap <c-c> "*yy <CR>
nnoremap <c-s-p> :FZF <CR>
nnoremap ; :

nmap ++ <plug>NERDCommenterToggle<Cr>
vmap ++ <plug>NERDCommenterToggle<Cr>

inoremap <c-s> <c-o>:w<CR>
inoremap <c-q> <c-o>:q<CR>
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
