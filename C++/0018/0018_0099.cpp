


#include <array>
#include <cassert>
#include <iostream>
int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::reverse_iterator i;
        i = c.rbegin();
        assert(*i == 3);
        *i = 5;
        assert(*i == 5);
		static_assert(noexcept(c.rbegin()), "");
        
        C::const_reverse_iterator j;
        j = c.rbegin();
        assert(*j == 5);
    }
}
