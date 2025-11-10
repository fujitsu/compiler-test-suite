#include <cstdio>
#include "000.hpp"

extern template class MyStack<int>;
extern template class MyStack<double>;

int main()
{
  MyStack<int> istack(5);
  MyStack<double> dstack(5);

  for (int i = 0; i < 5; ++i) {
    istack.push(i);
    dstack.push(static_cast<double>(i));
  }

  if (istack.pop() == 4 &&
      istack.pop() == 3 &&
      istack.pop() == 2 &&
      istack.pop() == 1 &&
      istack.pop() == 0 &&
      dstack.pop() == 4. &&
      dstack.pop() == 3. &&
      dstack.pop() == 2. &&
      dstack.pop() == 1. &&
      dstack.pop() == 0.) {
    std::puts("OK");
  }

  return 0;
}
