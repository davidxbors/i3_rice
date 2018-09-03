set number
syntax on

"copy and paste easier
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-p> "+P

" special characters
so ~/.scripts/deadkeys.vim
nmap <space><space>d :call ToggleDeadKeys()<CR>
imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a

" nav with guides
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l

" word count for plain text!
map <F3> :!wc <C-R>%<CR>

" compile files at writting (if possible)
autocmd FileType tex,cpp map <F9> :put =expand('%:t')<CR>V"*yVd<Esc>:w !compile $(xclip -o)<CR>

" LATEX snippets
autocmd FileType tex map <F3> :w !detex \| wc -w<CR>
autocmd FileType tex imap ,s \subsection{<++>}
autocmd FileType tex imap ,s* \subsection*{<++>}
