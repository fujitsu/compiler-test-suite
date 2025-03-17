


#include <iterator>
#include <list>
#include <forward_list>
#include <cassert>

template<class C>
void test(C c){
	const typename C::value_type V = typename C::value_type();
	typename std::front_insert_iterator<C> I(c);
	I = V;
	assert(c.front() == V);
}


int main() {
	test(std::list<int>());
	test(std::forward_list<int>());
}