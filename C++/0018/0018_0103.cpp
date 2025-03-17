


#include <array>
#include <cassert>

int main(){   
    typedef double T;
    typedef std::array<T, 3> C;
    C c = {1, 2, 3.5};
    auto t = std::get<1>(std::move(c));
	assert(t == 2);
	static_assert(noexcept(std::get<1>(c)), "");
    assert(c[0] == 1);
    assert(c[1] == 2);
    assert(c[2] == 3.5);
}
