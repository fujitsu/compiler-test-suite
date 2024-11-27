
#include <assert.h>

typedef struct { double _; } Align8Type;

char __;
char _Alignas(Align8Type) global_align_8 = 'c'; 
char _Alignas(16) global_align_16 = 'd';        

void test() {
    char __;
    char _Alignas(Align8Type) local_align_8 = 'e';  
    char _Alignas(16) local_align_16 = 'f';         
    
    assert((long)&global_align_8 % 8 == 0);
    assert((long)&global_align_16 % 16 == 0);
    
    assert((long)&local_align_8 % 8 == 0);
    assert((long)&local_align_16 % 16 == 0);
}

int main() {
    test();
}
