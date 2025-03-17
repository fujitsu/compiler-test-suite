


#include <algorithm>
#include <functional>
#include <cassert>
#include <iostream>

int main() {
	auto p = std::minmax({1, 2, 3, 3, 2, 1, 4}, std::greater<int>());
	assert(p.first == 4);
	assert(p.second == 1);
	
	auto l = std::minmax({1.0f, 2.0f, 3.0f, 3.0f, 0.0f}, std::less<float>());
	assert(l.first == 0.0f);
	assert(l.second == 3.0f);
}
