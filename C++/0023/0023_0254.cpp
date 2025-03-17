#include <cassert>

class T
{
    public:
        int mem;
        const int mem1 = 1;
        volatile int mem2;
};

int main()
{
    T t;
    assert(t.mem1 == 1);
}
