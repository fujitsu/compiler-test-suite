#include <cassert>

template<typename ...Args>
bool test23(Args&&... args)
{
    return (... >args);
}

int main()
{
    bool b = test23(1,2);
    assert(b == false);

}
