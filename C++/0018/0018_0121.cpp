



#include <forward_list>
#include <cassert>

int main() {
	std::forward_list<int> l1 = {1, 2};
	std::forward_list<int> l2 = {3, 4};
	l2.splice_after(l2.cbegin(), l1, l1.cbegin());

#if !defined _LIBCPP_VERSION > 3700
	static_assert(noexcept(l2.splice_after(l2.cbegin(), l1, l1.cbegin()))==true, "");
#endif
	auto iter = l2.begin();
	assert(*iter == 3);
	iter++;
	assert(*iter == 2);
	assert(*l1.begin() == 1);
	assert(l2.get_allocator() == l1.get_allocator());
}
