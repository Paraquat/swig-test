.DEFAULT_GOAL = shape.x
PROG = shape.x

CC = g++

LIBS = 
CCFLAGS = 
LDFLAGS = 
HEADER = shape.h polygon.h square.h circle.h
SRC = shape.cpp polygon.cpp square.cpp circle.cpp main.cpp
OBJ = shape.o polygon.o square.o circle.o main.o

.SUFFIXES: $(SUFFIXES) .cpp .h
.PHONY: clean

all: $(PROG)

clean:
	rm -f $(PROG) $(OBJ)

$(PROG): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $(OBJ) $(LPATH) $(LIBS)

.cpp.o:
	$(CC) -c $< $(LDFLAGS)

shape.o: shape.h shape.cpp
polygon.o: shape.h shape.o polygon.cpp polygon.h
square.o: polygon.h polygon.o square.h square.cpp
circle.o: shape.h shape.o circle.h circle.cpp
main.o: main.cpp circle.o square.o circle.h square.h
