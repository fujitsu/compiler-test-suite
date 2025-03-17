#include <cassert>

template<typename ...Args>
int test9(Args&&... args)
{
    return (... >> args);
}

int main()
{
    int b = test9(18,1,1);
    assert(b==4);
}


