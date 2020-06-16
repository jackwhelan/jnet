INCL=-I include

jnet: main.o common.o
	gcc build/main.o build/common.o -o bin/jnet $(INCL)

main.o: src/main.c
	gcc -c src/main.c -o build/main.o $(INCL)

common.o: src/common.c
	gcc -c src/common.c -o build/common.o $(INCL)

clean:
	rm bin/* build/*