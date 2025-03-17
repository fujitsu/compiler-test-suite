


#include <iterator>
#include <list>
#include <forward_list>
#include <cassert>
#include <memory>

template<class C>
void test(C c) {
	std::front_insert_iterator<C> i(c);
	i = typename C::value_type();
	assert(c.front() == typename C::value_type());
}

int main() {
	test(std::list<std::unique_ptr<int>>());
	test(std::forward_list<std::unique_ptr<int>>());
}
