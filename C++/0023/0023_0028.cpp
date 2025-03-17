#include <cassert>

template<typename ...Args>
int test9(Args&&... args)
{
    return (1>> ...>>args);
}

int main()
{
    int b = test9();
    assert(b==1);    
}

