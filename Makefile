aql:
	flex -o aql.lex.c aql.l
	bison -o aql.tab.c -vd aql.y
	cc -o aql aql.lex.c aql.tab.c data.c -lm -ll -O3
clean:
	rm -f aql.lex.c aql.tab.* aql.output aql
