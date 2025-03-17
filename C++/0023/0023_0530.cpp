#include <cassert>

struct Foo
{
    int i;
    char c;
    volatile double d;
};

int main()
{
    Foo f = { 1, 'a', 2.3 };
    auto& [ i, c, d ] = f;
    assert(f.c == 'a'&&f.i == 1&&f.d == 2.3);
    return 0;
}

