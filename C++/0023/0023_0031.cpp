#include <cassert>

template<typename ...Args>
bool test23(Args&&... args) 
{
    return (args>...>1);
}

int main()
{
    bool b = test23();
    assert(b==true);
}
