




#include <algorithm>
#include <cassert>

struct gen
{
    int operator()(int n)
    {
        return n-1;
    }
};

int main()
{
    int ia[] = {1, 2, 3, 4};
    int ia1[] = {4, 1, 2, 3};
	int ia11[] = {1, 2, 3, 4};
    const unsigned sa = sizeof(ia)/sizeof(ia[0]);
    gen r;
    std::random_shuffle(ia, ia+sa, r);
#if defined(__GNU_LIBRARY__) && !defined(_LIBCPP_VERSION)
    assert(std::equal(ia, ia+sa, ia11));
#else
    assert(std::equal(ia, ia+sa, ia1));
#endif
}