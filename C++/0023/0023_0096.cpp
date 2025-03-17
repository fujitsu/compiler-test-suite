#include<cassert>
#include<typeinfo>

struct A
{
 static void fun(){};
};


template<void (*p)() > 
struct B
{
    void fun()
    {
        assert(typeid(p)==typeid(void (*)()));
    }
};

template<void (*p)() >
void fun1()
{
    assert(typeid(p)==typeid(void (*)()));
}

void fun2(void (*p)())
{
    assert(typeid(p)==typeid(void (*)()));
}
int main()
{
    B<A::fun> b;
    b.fun();
    fun1<A::fun>();
    fun2(A::fun);
}
