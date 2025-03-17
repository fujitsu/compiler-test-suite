#include <cassert>

int main()
{
    [[using CC:opt(1)]]typedef int T;
    T t = 1;
    assert(t == 1);
    [[CC::debug]]typedef double A;
    A a = 2.1;
    assert(a == 2.1);
}