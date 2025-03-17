



#include <algorithm>
#include <cassert>

int main()
{
    int i = std::max({2, 3, 1});
    assert(i == 3);
    i = std::max({2, 1, 3});
    assert(i == 3);
    i = std::max({3, 1, 2});
    assert(i == 3);
    i = std::max({3, 2, 1});
    assert(i == 3);
    i = std::max({1, 2, 3});
    assert(i == 3);
    i = std::max({1, 3, 2});
    assert(i == 3);
	
    double j = std::max({5.0, 2.5, 6.0, 9.0});
	assert(j == 9.0);
	float z = std::max({2.3f, 4.0f, 1.0f, 5.0f});
	assert(z == 5.0f);
}
