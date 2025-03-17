#include <cassert>
#include <typeinfo>

struct A
{
    int mem;
};

constexpr A  ar[3]={{1},{2},{3}};
constexpr const A* get_array_pointer() { return ar; }

template <const A * p> struct X
{
   void fun()
   {
       assert((p->mem) == 1);
   }
};

int main()
{
    X<get_array_pointer()> x{};
    x.fun();
}
