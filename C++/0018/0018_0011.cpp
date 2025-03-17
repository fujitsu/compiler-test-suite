



#include <algorithm>
#include <random>
#include <cassert>

int main()
{
    int ia[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int ia1[] = {2, 7, 1, 4, 3, 6, 5, 10, 9, 8};
	int ia11[] = {3, 7, 10, 9, 8, 6, 1, 5, 2, 4};
    int ia111[] = {6, 8, 2, 5, 1, 3, 7, 10, 9, 4};
    int ia2[] = {1, 8, 3, 4, 6, 9, 5, 7, 2, 10};
	int ia22[] = {10, 7, 8, 3, 5, 9, 6, 2, 1, 4};
    int ia222[] = {8, 7, 5, 6, 2, 3, 4, 1, 10, 9};
    const unsigned sa = sizeof(ia)/sizeof(ia[0]);
    std::minstd_rand g;
    std::shuffle(ia, ia+sa, g);
#if (__clang__)
    assert(std::equal(ia, ia+sa, ia111));
#else
#if defined(__GNU_LIBRARY__) && !defined(_LIBCPP_VERSION)
    assert(std::equal(ia, ia+sa, ia11));
#else
    assert(std::equal(ia, ia+sa, ia1));
#endif
#endif

    std::shuffle(ia, ia+sa, g);
#if (__clang__)
    assert(std::equal(ia, ia+sa, ia222));
#else
#if defined(__GNU_LIBRARY__) && !defined(_LIBCPP_VERSION)
    assert(std::equal(ia, ia+sa, ia22));
#else
    assert(std::equal(ia, ia+sa, ia2));
#endif
#endif
}