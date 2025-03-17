







#include <functional>
#include <cmath>
#include <cassert>

float _pow(float a, float b)
{
    return std::pow(a, b);
}

int main()
{
    std::function<float(float, float)> fnc = _pow;
    auto task = std::bind(fnc, 2.f, 4.f);
    auto task2(task);
    assert(task() == 16);
    assert(task2() == 16);
}
