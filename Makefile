
bin/myapp: obj/myapp.o obj/funcs.o
	gcc $^ -o $@
obj/myapp.o: src/myapp.c
	gcc -c $< -o $@ -I./include
obj/funcs.o: src/funcs.c
	gcc -c $< -o $@ -I./include

clean:
	rm -f bin/myapp
	rm -f obj/*.o
