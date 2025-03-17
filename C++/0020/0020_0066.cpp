#include <memory>
#include <type_traits>
#include <cassert>

void test()
{
    std::shared_ptr<int> ps(new int);
    std::weak_ptr<int> pw(ps);
    assert(pw.use_count() == 1);

    std::weak_ptr<int> pwr(std::move(pw));
    assert(pw.use_count() == 0);
    assert(pwr.use_count() == 1);
}

int main()
{
    test();

    return 0;
}
