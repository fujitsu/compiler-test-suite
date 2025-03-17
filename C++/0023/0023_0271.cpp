#include <cassert>

inline namespace [[unstd]] A
{
    int a = 1;
}
inline namespace [[unstd]]
{
    int b = 3;
}

int main()
{
    assert(A::a == 1);
    assert(b == 3);
}
