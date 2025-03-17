




#include <memory>
#include <cassert>

int main()
{
    int* p = new int;
    std::declare_reachable(p);
    assert(std::undeclare_reachable(p) == p);
    std::declare_reachable(nullptr);
    delete p;
}
