#Makefile

CC = gcc
EXEC = SortList
CFLAGS = -Wall -ansi -Werror -pedantic
OBJ = lex.yy.c sort.tab.c LinkedList.o

$(EXEC) : $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

lex.yy.c : sort.l sort.tab.h
	flex sort.l

sort.tab.c : sort.y LinkedList.h
	bison -d sort.y

LinkedList.c : LinkedList.c LinkedList.h
	$(CC) -c LinkedList.c $(CFLAGS) 

clean:
	rm -f $(EXEC) $(OBJ)
