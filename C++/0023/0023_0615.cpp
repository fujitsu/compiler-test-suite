#include <cassert>

int i = 0;
void test() throw(){}
void test1() noexcept(false){}
void Gunc();
void Gunc();
void Gunc()
{
   i++;
   test();
   test1();
};

struct A
{
    void fun();
};

void A::fun()
{
    i++;
    test();
    test1();
}

template<class T> void func();
template<class T> void func();
template<class T>
void func()
{
    i++;
    test();
    test1();
}

int main()
{  
   Gunc();
   
   A a;
   a.fun();
   
   func<int>();
   
   assert(i == 3);
   
   return 0;
}
