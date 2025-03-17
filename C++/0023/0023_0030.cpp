#include <cassert>

template<typename ...Args>
bool test23(Args&&... args) 
{
    return (args>...>1);
}

int main()
{
    bool b = test23(5,4,1);
    assert(b==true);
}
