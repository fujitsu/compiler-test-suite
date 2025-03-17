#include<cassert>
#include<typeinfo>

class T
{
    int mem;
};

template<auto t> 
struct B
{
    int mem;
    void fun()
    {
        assert(typeid(t)==typeid(const char *));
    }
};
template<auto t> 
void fun()
{
    assert(typeid(t)==typeid(const char *));
}


const char ca[]="12345678";

int main()
{
    B<ca> b;
    b.fun();
    fun<ca>();
}
