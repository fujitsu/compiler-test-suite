#include <iostream>

const int max = 10;
const long long int master = 3628800;

template <int N>
long long int factory()
{
  return N * factory<N - 1>();
}

template <>
long long int factory<0>()
{
  return 1;
}

int main()
{
  long long int value = factory<max>();

  if (value == master) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << value << std::endl;
    std::cout << "NG" << std::endl;
  }

  return 0;
}
