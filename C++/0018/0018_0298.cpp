







#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p(new int(4));
        std::shared_ptr<int> r(new int(3));
        r = std::atomic_exchange(&p, r);
        assert(*p == 3);
        assert(*r == 4);
}
