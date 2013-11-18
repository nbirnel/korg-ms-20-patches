single-patches-raw : single-patch-gen.pl
	./$< > $@

single-patches-cooked : single-patches-raw
	./cook-single single-patches-raw >$@

clean : 
	rm -f single-patches-raw single-patches-cooked

