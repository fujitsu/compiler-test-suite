#include <cassert>

template <typename T> 
struct B
{
    int a;
};

template <template<typename V> class T> 
struct C
{
    int c = 1;
};

template <template<typename V> class T> 
void fun()
{
    int a = 1;
    assert(a == 1);
}

int main()
{
   C<B> cb;
   assert(cb.c == 1);
   fun<B>();
}
