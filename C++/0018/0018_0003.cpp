




#include <algorithm>
#include <functional>
#include <cassert>

int main()
{

    int i = std::min({2, 3, 1}, std::greater<int>());
    assert(i == 3);
    i = std::min({2, 1, 3}, std::greater<int>());
    assert(i == 3);
    i = std::min({3, 1, 2}, std::greater<int>());
    assert(i == 3);
    i = std::min({3, 2, 1}, std::greater<int>());
    assert(i == 3);
    i = std::min({1, 2, 3}, std::greater<int>());
    assert(i == 3);
    i = std::min({1, 3, 2}, std::greater<int>());
    assert(i == 3);
	
	double l = std::min({3.0, 2.0, 1.0}, std::greater<double>());
	assert(l == 3.0);
	float f = std::min({3.0f, 3.0f, 6.0f}, std::greater<float>());
	assert(f == 6.0f);
}
