

#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_reverse_iterator j;
        j = c.crend();
		assert(std::distance(c.crbegin(), j) == c.size());
		static_assert(noexcept(c.crend()), "");
    }
	
    {
        typedef std::array<int, 0> C;
        C c = {};
        C::const_reverse_iterator j;
        j = c.crend();
		assert(std::distance(c.crbegin(), j) == c.size());
		static_assert(noexcept(c.crend()), "");
    }
}