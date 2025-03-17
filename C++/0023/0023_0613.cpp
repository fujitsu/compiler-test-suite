#include <cassert>

int i = 0;

void test(){}

void f() noexcept(1==1);
void f() noexcept(true);
void f() noexcept;
void f() throw();
void f()noexcept
{
   i++;   
   test();
}

struct A
{
    void fun() noexcept(true);
};
void A::fun()noexcept
{
    i++;
    test();
}

template <typename T> void func()noexcept(false);
template <typename T> void func()noexcept(false);
template <typename T>
void func() noexcept(false)
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
