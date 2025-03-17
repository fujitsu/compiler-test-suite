#include <cassert>

class T
{
    public :
        static int mem;

};

int T::mem = 1;

int main()
{
    assert(T::mem == 1);
}
