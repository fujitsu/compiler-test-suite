#include <cassert>
#include <type_traits>

template <class T>
struct A 
{
   void f()
   {
       assert(true == (std::is_same<int, T>::value) || true == (std::is_same<const int * volatile* const *, T>::value) );
   }

};

void test()
{
   A<const int * volatile * const *> a;
   a.f();
}

int main()
{
    test();
}
