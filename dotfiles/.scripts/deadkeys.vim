let g:DeadKeysOn=0

function! ToggleDeadKeys()
	if !g:DeadKeysOn
		call DeadKeys()
	else
		call DeadKeysOff()
	endif
endfunction

function! DeadKeys()
	echo "Dead Keys: on"
	let g:DeadKeysOn=1
	"umlaut letters
	imap "A Ä
	imap "a ä
	imap "O Ö
	imap "o ö
	imap "U Ü 	
	imap "u ü
	"	imap |B ẞ 	
"	imap |b ß
	" imap "<space> "
	" imap |<space> |
	"romanian:
	imap )a ă
	imap ^a â
	imap ^i î
	imap ,s ș
	imap ,t ț
	imap ^A Â
	imap ^I Î
	imap ,S Ș
	imap ,T Ț
	" imap )<space> )
	" imap ^<space> ^
	" imap ,<space> ,
endfunction "deadkeys()

function! DeadKeysOff()
	echo "Dead Keys: off"
	let g:DeadKeysOn=0			
	" umlaut letters
	unmap "A  
	unmap "a 
	unmap "O  	
	unmap "o  	
	unmap "U
	unmap "u  	
"	unmap |B  	
"	unmap |b 
"	unmap "<space> 
"	unmap |<space> 

	" romanian:
	unmap )a 
	unmap ^a 
	unmap ^i 
	unmap ,s 
	unmap ,t 
	unmap ^A 
	unmap ^I 
	unmap ,S 
	unmap ,T 
"	unmap )<space> 
"	unmap ^<space> 
"	unmap ,<space> 
endfunction "deadkeys()	
