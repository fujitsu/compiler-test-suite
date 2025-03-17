#include <cassert>

class Foo
{
   public:
    int i;
    char c;
    static double t;
};

int main()
{
    Foo f = { 1, 'a'};
    auto [ i, c] = f;
    assert(i == 1);
    assert(c == 'a');
    return 0;
}
