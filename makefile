INC=-Iinclude
LINK=-lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl
CC=g++
CFLAGS=
.SUFFIXES=.cpp
TARGET=src/main
SRC=src/*
OBJ=$(SRC:.cpp=.o)
LIB=

.c.o:
	$(CC) $(CFLAGS) $(INC) -c $<

all: $(TARGET)

$(TARGET): $(OBJ) $(TARGET).cpp
	$(CC) $(CFLAGS) $(INC) $(OBJ) $(LIB) -o LearnOpenGL $(LINK)

clean:
	rm -f $(OBJ) $(TARGET).o $(TARGET)


