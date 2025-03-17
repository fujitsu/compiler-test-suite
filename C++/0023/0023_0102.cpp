#include<cassert>
#include<typeinfo>

void f(){}

template<void (&p)()> struct B
{
    void fun()
    {
        assert(typeid(p)==typeid(f));
    }
};

template<void (&p)()> 
void fun()
{
    assert(typeid(p)==typeid(f));
}

void fun1(void (&p)())
{
    assert(typeid(p)==typeid(f));
}

int main()
{  
    B<f> b;
    b.fun();
    fun<f>();
    fun1(f);
}
