#include <cassert>

namespace [[deprecated]][[deprecated]][[deprecated]]A 
{
    inline namespace [[deprecated,unstd]][[deprecated,maybe_unused]][[deprecated]]B
    {
        namespace [[deprecated,maybe_unused]][[deprecated]][[deprecated]]A
        {
            int a = 1;
        }
    }
}

int main()
{
    assert(A::B::A::a == 1);
}
