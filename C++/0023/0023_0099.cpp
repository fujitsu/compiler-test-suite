#include<cassert>
#include<typeinfo>

class T
{
    int mem;
};

template<const char *t> 
struct B
{
    int mem;
    void fun()
    {
        assert(typeid(t)==typeid(const char *));
    }
};
template<const char *t> 
void fun()
{
    assert(typeid(t)==typeid(const char *));
}

void fun1(const char *t)
{
    assert(typeid(t)==typeid(const char *));
}

const char ca[]="12345678";

int main()
{
    B<ca> b;
    b.fun();
    fun<ca>();
    fun1(ca);
}
