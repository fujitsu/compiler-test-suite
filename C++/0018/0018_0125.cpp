#include <list>
#include <cassert>

int main() {
	std::list<int> l1 = {1, 2, 3};
	std::list<int> l2 = {4, 5, 6};
#if !defined _LIBCPP_VERSION > 3700
	static_assert(noexcept(l1.erase(l1.begin())), "");
	static_assert(noexcept(l1.erase(l1.begin(), l1.end())), "");
	static_assert(noexcept(l1.pop_front()), "");
	static_assert(noexcept(l1.pop_back()), "");
	static_assert(noexcept(l1.clear()), "");
	static_assert(noexcept(l1.splice(l1.begin(), l2)), "");
	static_assert(noexcept(l1.splice(l1.begin(), std::move(l2))), "");
	static_assert(noexcept(l1.splice(l1.end(), l2, l2.begin())), "");
	static_assert(noexcept(l1.splice(l1.end(), std::move(l2), l2.begin())), "");
    static_assert(noexcept(l1.splice(l1.begin(), l2, l2.begin(), l2.end())), ""); 
    static_assert(noexcept(l1.splice(l1.begin(), std::move(l2), l2.begin(), l2.end())), "");
#endif
}
