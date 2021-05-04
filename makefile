HTML=$(shell ls */README.md | sed 's/README.md/index.html/')
HTML+=$(shell ls */answer.md | sed 's/answer.md/answer.html/')
HTML+=index.html
PANDOC_HTMLOPT=--mathjax -t html --template=template
PANDOC_TEXOPT=--highlight-style tango --latex-engine=lualatex -V documentclass=ltjarticle -V geometry:margin=1in -H ../mytemplate.tex
TARGET=$(HTML)

all: $(HTML)

index.md: README.md
	sed 's/README.md/index.html/' $< > $@
	sed -i 's/answer.md/answer.html/' $@

index.html: index.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT)
	rm -f index.md 

%/index.html: %/README.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT)
	
%/answer.html: %/answer.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT)


clean:
	rm -f $(TARGET) index.html
