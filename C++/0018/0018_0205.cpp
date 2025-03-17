

#include <iterator>
#include <cassert>

int main() {
	typedef std::istream_iterator<int> T;
	T it;
	assert(it == T());
	constexpr T it2;
	assert(it2 == T());
}
