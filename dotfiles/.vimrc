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
autocmd FileType tex imap ,s \subsection{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,s* \subsection*{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,dcls \documentclass[12pt]{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ttl \title{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,dt \date{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,body \begin{document}<CR>\maketitle<CR>\large<CR><++><CR>\end{document}<Esc><Space><Tab>
autocmd FileType tex imap ,bf \textbf{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,em \emph{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,it \textit{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ct \textcite{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,cp \parencite{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ol \begin{enumerate}<Enter><++><Enter>\end{enumerate}<Esc><Space><Tab>
autocmd FileType tex imap ,ul \begin{itemize}<CR><++><CR>\end{itemize}<Esc><Space><Tab>  
autocmd FileType tex imap ,li \item <++><Esc><Space><Tab> 

" cpp snippets
autocmd FileType cpp imap ,def #include<iostream><CR>int main(){<CR><Tab>std::cout << "Hello world!\n";<CR><Tab>return 0;<CR>}
