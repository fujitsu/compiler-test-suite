#include<cassert>
#include<typeinfo>

class T{};

template<T &t> 
struct B
{
    void fun()
    {
        assert(typeid(t)==typeid(T));
    }
};

template<T &t> 
void fun()
{
    assert(typeid(t)==typeid(T));
}

void fun1(T &t)
{
    assert(typeid(t)==typeid(T));
}

T t;

int main()
{  
    B<t> b;
    b.fun();
    fun<t>();
    fun1(t);
}
