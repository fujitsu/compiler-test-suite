#include <cassert>

struct S 
{ 
    int a; 
    const char* b; 
    int c; 
    int d = b[a]; 
};

int main()
{
    S ss = { 1, "asdf" };
    assert(ss.a == 1);
    assert(ss.b == "asdf");
    assert(ss.c == 0);
    assert(ss.d == 's');
}
