



#include <algorithm>
#include <cassert>

int main()
{
    int i = std::min({2, 3, 1});
    assert(i == 1);
    i = std::min({2, 1, 3});
    assert(i == 1);
    i = std::min({3, 1, 2});
    assert(i == 1);
    i = std::min({3, 2, 1});
    assert(i == 1);
    i = std::min({1, 2, 3});
    assert(i == 1);
    i = std::min({1, 3, 2});
    assert(i == 1);
	
    double j = std::min({5.0, 2.5, 6.0, 9.0});
	assert(j == 2.5);
	float z = std::min({2.3f, 4.0f, 1.0f, 5.0f});
	assert(z == 1.0f);
}
