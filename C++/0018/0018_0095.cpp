

#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_iterator j;
        j = c.cend();
		assert(std::distance(c.cbegin(), j) == c.size());
		static_assert(noexcept(c.cend()), "");
    }
	
    {
        typedef std::array<int, 0> C;
        C c = {};
        C::const_iterator j;
        j = c.cend();
		assert(std::distance(c.cbegin(), j) == c.size());
		static_assert(noexcept(c.cend()), "");
    }
}
