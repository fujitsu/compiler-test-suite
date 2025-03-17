#include <cassert>

class T
{
    public :
        const static int mem = 1;

};

const int T::mem;

int main()
{
    assert(T::mem == 1);
}
