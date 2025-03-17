


#include <algorithm>
#include <cassert>

int main() {
	auto p = std::minmax({1, 2, 3, 3, 2, 1, 4});
	assert(p.first == 1);
	assert(p.second == 4);
	
	auto l = std::minmax({1.0f, 2.0f, 3.0f, 3.0f, 0.0f});
	assert(l.first == 0.0f);
	assert(l.second == 3.0f);
}