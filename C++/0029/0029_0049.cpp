#include <iostream>

template <int n, int m>
class Pow
{
public:
  static const int64_t N = n * Pow<n, m - 1>::N;
};

template <int n>
class Pow<n, 1>
{
public:
  static const int64_t N = n;
};

int main()
{
  int64_t p = Pow<2, 3>::N;
  if (p != 8) { std::cout << "NG" << std::endl; }

  p = Pow<2, 30>::N;
  if (p != 1073741824) { std::cout << "NG" << std::endl; }

  p = Pow<3, 5>::N;
  if (p != 243) { std::cout << "NG" << std::endl; }

  p = Pow<10, 5>::N;
  if (p != 100000) { std::cout << "NG" << std::endl; }

  std::cout << "OK" << std::endl;

  return 0;
}
