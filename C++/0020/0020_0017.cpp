#include <array>
#include <cassert>

int main()
{
  {
    typedef int T;
    typedef std::array<T, 3> array_int_type;
    array_int_type x = {1, 2, 3};
    array_int_type y = {4, 5, 6};
    x.swap(y);
    assert(x.size() == 3);
    assert(x[0] == 4);
    assert(x[1] == 5);
    assert(x[2] == 6);
    assert(y.size() == 3);
    assert(y[0] == 1);
    assert(y[1] == 2);
    assert(y[2] == 3);
  }

  {
    typedef double T;
    typedef std::array<T, 3> array_double_type;
    array_double_type x = {1.0, 2, 3.5};
    array_double_type y = {6, 7.5, 8};
    x.swap(y);
    assert(x.size() == 3);
    assert(x[0] == 6);
    assert(x[1] == 7.5);
    assert(x[2] == 8);
    assert(y.size() == 3);
    assert(y[0] == 1.0);
    assert(y[1] == 2);
    assert(y[2] == 3.5);
  }

  {
    typedef short T;
    typedef std::array<T, 0> array_zero_type;
    array_zero_type x = {};
    array_zero_type y = {};
    x.swap(y);
    assert(x.size() == 0);
    assert(y.size() == 0);
  }
}
