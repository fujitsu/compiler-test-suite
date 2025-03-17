#include <cassert>

int i = 0;

void test(){}

class X {};
class Z:public X {};
void f() throw();
void f() throw();

void f() throw()
{
    test();
    i++;
    int n=0;
    if(n) throw X();
    if(n) throw Z();
} 

class A
{
    public:
    void fun() throw();
};

void A::fun() throw()
{
    i++;
    test();
}

template <typename T>
void func()throw();

template <typename T>
void func()throw()
{
    i++;
    test();
}

int main()
{
    f();
    
    A a;
    a.fun();
    
    func<int>();
    
    assert(i == 3);
    
    return 0;  
}
