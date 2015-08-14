main.html : main.md
	pandoc -o build/main.html main.md \
		--standalone
	gnome-open build/main.html

pdf: 
	pandoc -o build/main.pdf main.md \
		--latex-engine=xelatex
	gnome-open build/main.pdf
