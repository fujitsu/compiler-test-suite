


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::iterator i;
        i = c.begin();
        assert(*i == 1);
        *i = 5;
        assert(*i == 5);
		static_assert(noexcept(c.begin()), "");
        
        C::const_iterator j;
        j = c.begin();
        assert(*j == 5);
    }
}
