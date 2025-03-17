#include <cassert>

template<typename ...Args>
int test9(Args&&... args) 
{
    return (args>>...);
}

int main()
{
    bool b = test9(1,1,10);
    assert(b==1);
}

