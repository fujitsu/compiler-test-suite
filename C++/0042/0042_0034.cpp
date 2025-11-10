#include <cstring>
#include <cassert>

#define t(a) a
#define p() int
#define q(x) x
#define r(x,y) x ## y
#define str(x) # x
                       
void test(){
    p() i[q()] = { q(1), r(2,3), r(4,), r(,5), r(,) } ;
    assert( q(1) == 1 ) ;
    assert( r(2, 3) == 23 ) ;
    assert( r(4, ) == 4 ) ;
    assert( r(, 5) == 5 ) ;
    
    
    char c[2][6] = { str(hello), str() } ;
    assert( !strcmp(str(hello), "hello") ) ;
    assert( !strcmp(str(), "") ) ;   
}
                       
int main(){
    test();
}                       