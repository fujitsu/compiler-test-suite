/*
  K.3.5.1.2 / p10
  Environmental limits
  The value of the macro TMP_MAX_S shall be at least 25.
*/

#include <stdio.h>
#include <assert.h>

void test() {
    assert(TMP_MAX_S >= 25);
}

int main(int argc, char **argv) {
    test();
    return 0;
}
