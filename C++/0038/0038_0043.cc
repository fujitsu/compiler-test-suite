#include <iostream>

template <class X> void swapargs(X &a, X &b)
{
  X temp;
  temp = a;
  a = b;
  b = temp;
}

int main()
{
  int i = 10, j = 20;

  swapargs(i, j);

  if (i != 20 || j != 10) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
