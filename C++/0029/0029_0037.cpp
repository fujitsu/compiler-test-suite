#include <iostream>

template <class T>
T GCD(T a, T b)
{
  if (b == 0) { return a; }
  return GCD(b, a % b);
}

int main()
{
  if (GCD<int>(42, 63) != 21) {
    std::cout << "NG1" << std::endl;
  }
  else if (GCD<int>(5, 108) != 1) {
    std::cout << "NG2" << std::endl;
  }
  else if (GCD<int>(10, 283) != 1) {
    std::cout << "NG3" << std::endl;
  }
  else if (GCD<int>(12, 260) != 4) {
    std::cout << "NG4" << std::endl;
  }
  else {
    std::cout << "OK" << std::endl;
  }

  return 0;
}
