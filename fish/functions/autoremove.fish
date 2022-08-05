function autoremove
	paru -Rcns $(paru -Qdtq|tr "\n" " ")
end
