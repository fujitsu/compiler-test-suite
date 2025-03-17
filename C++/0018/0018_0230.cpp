



#include <memory>
#include <cassert>

int main()
{
    int* p = new int;
    std::undeclare_reachable(p);
}
