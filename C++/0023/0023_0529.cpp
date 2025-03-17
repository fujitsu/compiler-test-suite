#include <cassert>

struct Foo
{
    const int i;
    char c;
    double d;
};

int main()
{
    Foo f { 1, 'a', 2.3 };
    auto [ i, c, d ] = f;
    assert(i == 1&&c == 'a'&&d == 2.3);
    return 0;
}

