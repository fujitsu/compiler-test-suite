#include <cassert>

int i = 0;

void test() throw(){}
void test1() noexcept(false){}

void f() noexcept(1==1);
void f() noexcept(true);
void f() noexcept;
void f() throw();
void f()noexcept
{
   i++;   
   test();
   test1();
}

struct A
{
    void fun() noexcept(true);
};
void A::fun()noexcept
{
    i++;
    test();
    test1();
}

template <typename T> void func()noexcept(1 == 2);
template <typename T> void func()noexcept(1 == 2);
template <typename T>
void func() noexcept(1 == 2)
{
   i++;
   test();
   test1();
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
