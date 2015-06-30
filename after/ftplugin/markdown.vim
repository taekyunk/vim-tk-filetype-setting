" Vim filetype plugin
" Language:		Markdown

" To create markdown level 1 and level 2 header
nnoremap <leader>h1 yypVr=
nnoremap <leader>h2 yypVr-

" shortcut for pandoc
" to pdf
nnoremap <leader>tp :w <bar> silent ! start pandoc -f markdown % -o %:r.pdf<CR>
" to beamer
nnoremap <leader>tb :w <bar> silent ! start pandoc -f markdown -t beamer % -o %:r.pdf<CR>
" to word
nnoremap <leader>tw :w <bar> silent ! start pandoc -f markdown -t docx % -o %:r.docx<CR>

" need this because markdown imports HTML setting
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

