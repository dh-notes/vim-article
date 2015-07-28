main.html : main.md
	pandoc -o main.html main.md \
	gnome-open main.pdf

pdf: 
	pandoc -o main.pdf main.md \ 
		--latex-engine=xelatex
