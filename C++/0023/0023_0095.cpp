#include<cassert>
#include<typeinfo>

void f(){}

template<void (*f)()> 
struct B
{
    void fun()
    {
        assert(typeid(f)==typeid(void (*)()));
    }
};

template<void (*f)()> 
void fun()
{
    assert(typeid(f)==typeid(void (*)()));
}

void fun1(void (*f)())
{
    assert(typeid(f)==typeid(void (*)()));
}
int main()
{  

    B<f> b;
    b.fun();
    fun<f>();
    fun1(f);
}
