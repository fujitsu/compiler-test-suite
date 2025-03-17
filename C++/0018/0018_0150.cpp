






#include <cmath>
#include <functional>
#include <cassert>

struct power
{
  template <typename T>
  T
  operator()(T a, T b)
  {
    return std::pow(a, b);
  }
};

struct plus_one
{
  template <typename T>
  T
  operator()(T a)
  {
    return a + 1;
  }
};

int main()
{
    using std::placeholders::_1;

    auto g = std::bind(power(), 2, _1);
    assert(g(5) == 32);
    assert(std::bind(plus_one(), g)(5) == 33);
}
