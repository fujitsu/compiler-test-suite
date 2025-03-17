#include <cassert>
#include <typeinfo>

int a[2] = {1,2};
auto f()->int(&)[2]{return a;};

int main()
{
    const auto [x,y] = f();
    assert(x == 1&&y == 2);
    assert(typeid(x) == typeid(const int)&&typeid(y) == typeid(const int));
    return 0;
}

