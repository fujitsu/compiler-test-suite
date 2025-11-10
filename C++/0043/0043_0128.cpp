#include <iostream>
#include <random>
#include <cstdint>

int main()
{
  
  
  std::independent_bits_engine<std::mt19937, 64, std::uint64_t> engine;

  std::uint64_t result = engine();
  std::cout << "ok" << std::endl;

  return 0;
}
