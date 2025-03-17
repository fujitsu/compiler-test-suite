#include <cassert>

namespace [[maybe_unused]][[maybe_unused]][[maybe_unused]]A 
{
    namespace B::C
    {
        inline namespace [[maybe_unused]][[maybe_unused]][[maybe_unused]]A
        {
            int a = 1;
        }
    }
}

int main()
{
    assert(A::B::C::A::a == 1);
}
