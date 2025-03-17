

#include <iterator>
#include <cassert>

template <class It>
void
test(It i)
{
    std::move_iterator<It> r(i);
    assert(r.operator->() == i);
}

int main()
{
    char s[] = "123";
    test(s);
}


