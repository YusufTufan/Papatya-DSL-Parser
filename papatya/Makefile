papatya: papatya.tab.o lex.yy.o
	$(CC) -o papatya papatya.tab.o lex.yy.o -mconsole

papatya.tab.c papatya.tab.h: papatya.y
	bison -d papatya.y

lex.yy.c: papatya.l papatya.tab.h
	flex papatya.l

papatya.tab.o: papatya.tab.c
	$(CC) -c papatya.tab.c

lex.yy.o: lex.yy.c
	$(CC) -c lex.yy.c

clean:
	rm -f papatya papatya.tab.c papatya.tab.h lex.yy.c *.o
