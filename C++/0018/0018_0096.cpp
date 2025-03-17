

#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_reverse_iterator j;
        j = c.crbegin();
        assert(*j == 3);
		assert(std::distance(j, c.crend()) == c.size());
		static_assert(noexcept(c.crbegin()), "");
    }
	
    {
        typedef std::array<int, 0> C;
        C c = {};
        C::const_reverse_iterator j;
        j = c.crbegin();
		assert(std::distance(j, c.crend()) == c.size());
		static_assert(noexcept(c.crbegin()), "");
    }
}
