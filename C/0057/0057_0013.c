
#include <stddef.h>
#include <assert.h>

void test() {
    assert(_Alignof(max_align_t) >= _Alignof(long long)); 
    assert(_Alignof(max_align_t) >= _Alignof(long double));
}


int main() {

}
