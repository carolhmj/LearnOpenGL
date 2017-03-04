# usando g++ como compilador
CC = g++

# Escolher OpenGL e GLFW dependendo do OS
LINKGL = -lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -lGL
# compiler flags:
#  -g        adiciona informações de debug no executável
#  -Wall     ativa a maioria dos erros de compilação
#  -std=c+14 usa o standard mais recente
CFLAGS = -g -Wall -std=c++14 -I inc -fdiagnostics-color=always
LINK = -lm -lSOIL $(LINKGL)

default: main

main: main.cpp shader.h
	$(CC) $(CFLAGS) main.cpp -o main $(LINK)