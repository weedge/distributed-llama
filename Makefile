CC = g++

matmul: src/matmul.cpp
	$(CC) -std=c++11 -Werror -O3 -c src/matmul.cpp -o matmul.o

matmul-test: src/matmul-test.cpp matmul.o
	$(CC) -std=c++11 -Werror -O3 src/matmul-test.cpp -g -o matmul-test matmul.o

funcs: src/funcs.cpp
	$(CC) -std=c++11 -Werror -O3 -c src/funcs.cpp -o funcs.o

transformer: src/transformer.cpp
	$(CC) -std=c++11 -Werror -O3 -c src/transformer.cpp -o transformer.o

transformer-test: src/transformer-test.cpp
	$(CC) -std=c++11 -Werror -O3 src/transformer-test.cpp -g -o transformer-test transformer.o matmul.o funcs.o
