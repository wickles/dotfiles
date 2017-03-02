" my filetype file
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    " add as many lines as desired
    au! BufRead,BufNewFile *.C       setfiletype cpp
augroup END
