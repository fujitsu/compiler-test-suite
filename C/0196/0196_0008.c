/*
  K.3.3/p2
2 The type is
    rsize_t
  which is the type size_t.
  */
#include <stddef.h>
#include <assert.h>

#define is_type_of(type1, type2) (_Generic(((type1)0), type2: 1, default: 0))

void test() {
    assert(is_type_of(rsize_t, size_t));
}

int main(int argc, char **argv) {
    test();
    return 0;
}