#include <cassert>

template<typename ...Args>
int test9(Args&&... args) 
{
    return (args>> ...>>1);
}

int main()
{
    bool b = test9(18,1,1);
    assert(b==1);
}

