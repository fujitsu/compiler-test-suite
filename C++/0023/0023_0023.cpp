#include <cassert>

template<typename ...Args>
bool test23(Args&&... args) 
{
    return (args>...);
}

int main()
{
    bool b = test23(4,3,0);
    assert(b==true);
}
