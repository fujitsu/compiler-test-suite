





#include <memory>
#include <cassert>

int main()
{
    const std::shared_ptr<int> p(new int(32));
    assert(*p == 32);
    *p = 3;
    assert(*p == 3);
}
