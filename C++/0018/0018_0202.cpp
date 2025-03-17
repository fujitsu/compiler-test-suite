#include <iterator>
#include <vector>
#include <list>
#include <deque>
#include <cassert>
#include <memory>

template<class C>
void test(C c) {
	std::back_insert_iterator<C> i(c);
	i = typename C::value_type();
	assert(c.back() == typename C::value_type());
}

int main() {
	test(std::vector<std::unique_ptr<int>>());
	test(std::list<std::unique_ptr<int>>());
	test(std::deque<std::unique_ptr<int>>());
}
