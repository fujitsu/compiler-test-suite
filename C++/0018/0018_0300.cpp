







#include <memory>
#include <cassert>

int main()
{
        std::shared_ptr<int> p(new int(3));
        std::shared_ptr<int> q = std::atomic_load(&p);
        assert(*q == *p);
}
