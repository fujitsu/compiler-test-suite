#include <cassert>
#include <typeinfo>
#include <type_traits>

const char ca[]="12345678";

template<decltype(auto) t> 
struct B
{
    int mem;
    void fun()
    {
        assert(typeid(t)==typeid(const char *) || typeid(t)==typeid(&ca));
    }
};

template<decltype(auto) t> 
void fun()
{
    assert(typeid(t)==typeid(const char *) || typeid(t)==typeid(&ca));
}

int main()
{
    B<&ca> b;
    b.fun();
    fun<&ca>();
}
