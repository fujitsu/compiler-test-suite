#include <cassert>

void g()
{
    int n=0;
    [=]
    {
        const int *i= &n;
        assert(*i == 0);
    }();
}

int main()
{
    g();
}
