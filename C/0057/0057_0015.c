
#include <stdalign.h>

#if ! __alignas_is_defined
# error __alignas_is_defined is not defined!
#endif

#if ! __alignof_is_defined
# error __alignas_is_defined is not defined!
#endif

void test() {

}

int main() {
    test();
}
