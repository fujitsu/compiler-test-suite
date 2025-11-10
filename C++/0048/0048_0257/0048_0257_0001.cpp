#include <cstdio>

template <typename T, typename U>
auto add(const T& lhs, const U& rhs)
  -> decltype(lhs + rhs)
{
  return lhs + rhs;
}

void sub1()
{
  if (add(1, 2)   != 3   ||
      add('a', 1) != 'b' ||
      add(1., 1)  != 2.) {
    return;
  }

  std::puts("OK");
}
