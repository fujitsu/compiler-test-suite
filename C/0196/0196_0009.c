/*
  K.3.4/p2
  The macro is
    RSIZE_MAX
  which expands to a value of type size_t. 
*/

#include <stdint.h>
#include <assert.h>
#include <stdlib.h>

#define has_type_of(obj, type) (_Generic((obj), type: 1, default: 0))

void test() {
    assert(has_type_of(RSIZE_MAX, size_t));
}

int main(int argc, char **argv) {
    test();
    return 0;
}