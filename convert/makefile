all: physmath.md

physmath.md: physmath.tex convert.rb
	ruby convert.rb physmath.tex > physmath.md

clean:
	rm -f phymath.md
