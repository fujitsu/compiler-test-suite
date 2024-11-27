
#include <assert.h>

#define TRUE    1
#define FALSE   0
#define has_type_of(obj, type) (_Generic((obj), type: TRUE, default: FALSE))

void test() {
    assert(has_type_of(_Generic(3, float: 0, int: 3.14, default: (char)2), double));
    assert(has_type_of(_Generic(3.14, float: 0, default: (char)2), char));
    
    assert(_Generic(3, float: 0, int: 3.14, default: (char)2) == 3.14);
    assert(_Generic(3.14, float: 0, default: (char)2) == (char)2);
}

int main() {
    test();
}
