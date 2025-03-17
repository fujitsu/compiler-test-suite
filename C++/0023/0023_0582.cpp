#include <cassert>

template <int n>
struct A
{
    static_assert(n > 0,"n > 0");

    static_assert(n > 1);

    int i = 1;
};

int main()
{
     A<2> a;
     assert(a.i == 1);
}
