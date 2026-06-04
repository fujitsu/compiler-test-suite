/*
  K.3.2/p2
  The type is
    errno_t
  which is type int.
*/

#include <errno.h>
#include <assert.h>

#define is_type_of(type1, type2) (_Generic(((type1)0), type2: 1, default: 0))

void test() {
    assert(is_type_of(errno_t, int));
}

int main(int argc, char **argv) {
    test();
    return 0;
}