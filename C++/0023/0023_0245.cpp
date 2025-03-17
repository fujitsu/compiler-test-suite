#include <cassert>

struct T
{
    int mem;
};

inline T t{1};
const inline T t1{2};
volatile inline T t2{3};

int main()
{
    assert(t.mem == 1);
    assert(t1.mem == 2);
    assert(t2.mem == 3);
}
