#include <cassert>

int i = 0;
void test(){}

void Gunc();
void Gunc();
void Gunc()
{
   i++;
   test();
};

struct A
{
    void fun();
};

void A::fun()
{
    i++;
    test();
}

template<class T> void func();
template<class T> void func();
template<class T>
void func()
{
    i++;
    test();
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
