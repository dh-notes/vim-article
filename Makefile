main.html : main.md
	pandoc -o build/main.html main.md \
		--standalone
	gnome-open main.html

pdf: 
	pandoc -o build/main.pdf main.md \
		--latex-engine=xelatex
