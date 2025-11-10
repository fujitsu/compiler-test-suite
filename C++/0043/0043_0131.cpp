#include <random>
#include <iostream>

int main()
{
  std::default_random_engine g(123456789);

  auto x = std::generate_canonical<float, std::numeric_limits<float>::digits>(g);
  std::cout << "ok" << std::endl;

  return 0;
}
