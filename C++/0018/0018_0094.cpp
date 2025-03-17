

#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_iterator j;
        j = c.cbegin();
        assert(*j == 1);
		assert(std::distance(c.cbegin(), c.cend()) == c.size());
		static_assert(noexcept(c.cbegin()), "");
    }
	
    {
        typedef std::array<int, 0> C;
        C c = {};
        C::const_iterator j;
        j = c.cbegin();
		assert(std::distance(c.cbegin(), c.cend()) == c.size());
		static_assert(noexcept(c.cbegin()), "");
    }
}
