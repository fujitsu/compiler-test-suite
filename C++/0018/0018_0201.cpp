


#include <iterator>
#include <vector>
#include <list>
#include <deque>
#include <cassert>

template<class C>
void test(C c){
	const typename C::value_type V = typename C::value_type();
	typename std::back_insert_iterator<C> I(c);
	I = V;
	assert(c.back() == V);
}


int main() {
	test(std::vector<int>());
	test(std::list<int>());
	test(std::deque<int>());
}