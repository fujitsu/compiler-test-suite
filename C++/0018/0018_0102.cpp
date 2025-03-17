



#include <array>
#include <cassert>

int main()
{
    {
        typedef double T;
        typedef std::array<T, 3> C;
        C c = {1, 2, 3.5};
        std::get<1>(c) = 5.5;
		static_assert(noexcept(std::get<1>(c)), "");
        assert(c[0] == 1);
        assert(c[1] == 5.5);
        assert(c[2] == 3.5);
    }
}