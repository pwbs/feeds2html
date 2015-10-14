all:feeds2html

feeds2html:utils.cmx http.cmx feeds2html.cmx
	ocamlfind ocamlopt -g -package netstring,nettls-gnutls,netclient,syndic -linkpkg $^ -o $@
%.cmx:%.ml
	ocamlfind ocamlopt -g -package netstring,nettls-gnutls,netclient,syndic -c $<

clean:
	rm -f *.cmx *~
