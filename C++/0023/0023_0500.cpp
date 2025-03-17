#include <cassert>

int main()
{
    auto a = [](int c,int b){asm("");return c;};
    assert(a(1,1)==1);
}
