.DEFAULT_GOAL = shape.x
PROG = shape.x

CC = g++

LIBS = 
CCFLAGS = -fPIC
LDFLAGS = 
INCLUDE = -I/usr/include/python3.8
HEADER = shape.h polygon.h square.h circle.h
SRC = shape.cpp polygon.cpp square.cpp circle.cpp main.cpp
OBJ = shape.o polygon.o square.o circle.o main.o
LIB = _shapes.so
INTERFACE = shapes.i
WRAPPER = shapes_wrap.cxx
WRAPPER_OBJ = shapes_wrap.o

.SUFFIXES: $(SUFFIXES) .cpp .h
.PHONY: clean

all: $(PROG)

clean:
	rm -f $(PROG) $(OBJ) $(WRAPPER) $(WRAPPER_OBJ) $(LIB)

$(PROG): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $(OBJ) $(LPATH) $(LIBS)

.cpp.o:
	$(CC) $(CCFLAGS) -c $< $(LDFLAGS)

swig:
	swig -c++ -python $(INTERFACE)
	$(CC) $(CCFLAGS) -c $(WRAPPER) $(INCLUDE)
	$(CC) -shared $(OBJ) $(WRAPPER_OBJ) -o $(LIB)

shape.o: shape.h shape.cpp
polygon.o: shape.h shape.o polygon.cpp polygon.h
square.o: polygon.h polygon.o square.h square.cpp
circle.o: shape.h shape.o circle.h circle.cpp
main.o: main.cpp circle.o square.o circle.h square.h
