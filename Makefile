COQMAKEFILE = _CoqProject
COQBIN       = coq_makefile
COQC        ?= coqc

all: coq extract

coq:
	$(COQBIN) -f _CoqProject -o Makefile.coq
	$(MAKE) -f Makefile.coq all

extract: coq
	mkdir -p arche-coq/PDE/Extraction
	./arche-coq/PDE/extract.sh

clean:
	$(MAKE) -f Makefile.coq clean
	rm -f Makefile.coq
	rm -rf arche-coq/PDE/Extraction/*.ml

.PHONY: all coq extract clean
