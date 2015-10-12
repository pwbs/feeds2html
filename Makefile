all:rss

rss:utils.cmx http.cmx rss2html.cmx
	ocamlfind ocamlopt -g -package netstring,nettls-gnutls,netclient,syndic -linkpkg $^ -o $@
%.cmx:%.ml
	ocamlfind ocamlopt -g -package netstring,nettls-gnutls,netclient,syndic -c $<

clean:
	rm -f *.cmx *~
