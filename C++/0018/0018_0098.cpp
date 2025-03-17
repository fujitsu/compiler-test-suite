


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::iterator i;
        i = c.end();
		static_assert(noexcept(c.end()), "");
		assert(std::distance(c.begin(), i) == c.size());
        
        C::const_iterator j;
        j = c.end();
		static_assert(noexcept(c.end()), "");
		assert(std::distance(c.begin(), i) == c.size());
    }
}

