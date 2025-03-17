#include<cassert>
#include<typeinfo>

class T{};
template<auto & c> 
struct B
{
    void fun()
    {
        assert(typeid(c)==typeid(T));
    }
};

template<auto & c>
void fun()
{
    assert(typeid(c)==typeid(T));
}

T t;

int main()
{  
    B<t> b;
    b.fun();
    fun<t>();
}
