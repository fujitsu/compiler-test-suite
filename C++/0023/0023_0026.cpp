#include <cassert>

template<typename ...Args>
bool test23(Args&&... args) 
{
    return (1>...>args);
}

int main()
{
    bool b = test23();
    assert(b==true);
}
