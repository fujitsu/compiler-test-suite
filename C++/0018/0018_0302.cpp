







#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p;
        std::shared_ptr<int> r(new int(3));
        std::atomic_store(&p, r);
        assert(*p == *r);
}
