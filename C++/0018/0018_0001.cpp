




#include <algorithm>
#include <functional>
#include <cassert>

int main()
{

    int i = std::max({2, 3, 1}, std::greater<int>());
    assert(i == 1);
    i = std::max({2, 1, 3}, std::greater<int>());
    assert(i == 1);
    i = std::max({3, 1, 2}, std::greater<int>());
    assert(i == 1);
    i = std::max({3, 2, 1}, std::greater<int>());
    assert(i == 1);
    i = std::max({1, 2, 3}, std::greater<int>());
    assert(i == 1);
    i = std::max({1, 3, 2}, std::greater<int>());
    assert(i == 1);
	
	double l = std::max({3.0, 2.0, 1.0}, std::greater<double>());
	assert(l == 1.0);
	float f = std::max({3.0f, 3.0f, 6.0f}, std::greater<float>());
	assert(f == 3.0f);
}
