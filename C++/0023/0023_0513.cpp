#include <cassert>

struct A
{ 
    int mem = 1;
    void g()
    {
        A a = *this;
        auto k = [=]()
        {
            A b = a;
            assert(b.mem == 1);
            return 1;
        }();
    }
};

int main()
{
    A a;
    a.g();
}
