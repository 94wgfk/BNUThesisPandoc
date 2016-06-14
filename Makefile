SRC_DIR = src
TEMP_DIR = temp
DIST_DIR = dist
TEMPLATE_DIR = template/bnu
PROJECT = $(shell ls $(SRC_DIR))
TEX_CMD = xelatex
BIB_CMD = bibtex
 
all : $(PROJECT)
 
$(PROJECT):
	cp -r $(SRC_DIR)/$@ $(TEMP_DIR)/$@
	cp $(TEMPLATE_DIR)/* $(TEMP_DIR)/$@
	pandoc -s --template=$(TEMP_DIR)/$@/template.tex --chapters -o $(TEMP_DIR)/$@/thesis.tex $(TEMP_DIR)/$@/thesis.md
	sed -i 's/\\\\includegraphics{/\\\\includegraphics[width=\\\\maxwidth]{/g' $(TEMP_DIR)/$@/thesis.tex
	cd $(TEMP_DIR)/$@/ && $(TEX_CMD) thesis
	cd $(TEMP_DIR)/$@/ && $(BIB_CMD) thesis
	cd $(TEMP_DIR)/$@/ && $(TEX_CMD) thesis
	cd $(TEMP_DIR)/$@/ && $(TEX_CMD) thesis
	cp $(TEMP_DIR)/$@/thesis.pdf $(DIST_DIR)/$@.pdf

clean :
	rm -rf $(TEMP_DIR)/*
