#include<cassert>
#include<typeinfo>


class T{};
T t;

template<decltype(auto)  c> 
struct B
{
    void fun()
    {
        assert(typeid(c)==typeid(&t));
    }
};

template<decltype(auto)  c>
void fun()
{
    assert(typeid(c)==typeid(&t));
}

int main()
{  
    B<&t> b;
    b.fun();
    fun<&t>();
}
