#include <cassert>

template <class T,class U = T> struct B{int a;};
template <template<typename ...T> class T> struct C
{
    int c = 1;
};

template <template<class ...T> class T> 
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
