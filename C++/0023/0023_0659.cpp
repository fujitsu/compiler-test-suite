#include <cassert>

template <int T> struct B{int a;};

template <template<int V> class T> 
struct C
{
    int c = 1;
};

template <template<int V> class T>
void fun()
{
    int c = 1;
    assert(c == 1);
}

template <template<int ...> class T> 
struct D
{
    int c = 1;
};

template <template<int ...> class T> 
void fun1()
{
   int c = 1;
   assert(c == 1);
}
int main()
{
   C<B> cb;
   assert(cb.c == 1);
   fun<B>();
   D<B> db;
   assert(db.c == 1);
   fun1<B>();
}
