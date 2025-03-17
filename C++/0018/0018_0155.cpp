





#include <functional>
#include <cstdlib>
#include <cassert>


class A
{
};

int main()
{
    std::function<int(int)> f;
    std::function<int(int)> f1 = f;
}
