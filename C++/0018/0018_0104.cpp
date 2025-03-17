



#include <array>
#include <cassert>

int main()
{
    {
        typedef double T;
        typedef std::array<T, 3> C;
        const C c = {1, 2, 3.5};
        assert(std::get<0>(c) == 1);
        assert(std::get<1>(c) == 2);
        assert(std::get<2>(c) == 3.5);
    }
}