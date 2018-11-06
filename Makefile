h0cc: h0cc.c

test: h0cc
	./test.sh

clean:
	rm -f h0cc *.o *~ tmp*

