
BIN = bin

CFLAGS = -Wall -Isrc/ -std=c++11 -lstdc++

all: examples

clean:
	rm -f ./$(BIN)/*

examples: $(BIN)/sample_tests $(BIN)/argument_tests
	@./$(BIN)/argument_tests 100
	@./$(BIN)/sample_tests

$(BIN)/sample_tests:  test/sample_tests.cpp test/sample_tests2.cpp
	$(CXX) $(CFLAGS) test/sample_tests.cpp test/sample_tests2.cpp -o $(BIN)/sample_tests

$(BIN)/argument_tests:  test/argument_tests.cpp
	$(CXX) $(CFLAGS) test/argument_tests.cpp -o $(BIN)/argument_tests
