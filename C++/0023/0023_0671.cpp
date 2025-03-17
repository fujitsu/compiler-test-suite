#include <cassert>

template <class T,class Y = int> struct B{int a;};
template <template<typename V,class N = int> class T> struct C{int c = 1;};
template <template<typename V,class N = int> class T> 
void fun()
{
    int c = 1;
    assert(c == 1);
}
int main()
{
   C<B> cb;
   assert(cb.c == 1);
   fun<B>();
}
