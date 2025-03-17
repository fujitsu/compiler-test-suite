


#include <array>
#include <cassert>
#include <iostream>
int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::reverse_iterator i;
        i = c.rend();
		static_assert(noexcept(c.rend()), "");
		assert(std::distance(c.rbegin(), i) == c.size());
        
        C::const_reverse_iterator j;
        j = c.rend();
    }
}

