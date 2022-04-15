CC = gcc
CFLAGS = -g -O0 -std=c99

miniL: miniL-lex.o
	$(CC) $< -o $@ -lfl

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

miniL-lex.c: miniL.lex
	flex -o $@ $< 

parser: mini_L.lex
	flex mini_L.lex
	gcc -o lexer lex.yy.c -lfl

clean:
	rm -f *.o miniL-lex.c miniL