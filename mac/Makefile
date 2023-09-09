CFLAGS=-std=c11 -g -static

OBJ = *.o
SRC = 9cc_mac.c
NAME = 9cc_mac
TEST_SH = test_mac.sh

9cc: $(SRC)

test: $(NAME)
    bash $(TEST_SH)

clean:
    rm -f $(NAME) $(OBJ) *~ tmp*

.PHONY: test clean